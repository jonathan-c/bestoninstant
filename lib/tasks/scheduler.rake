require 'open-uri'

desc "This task is called by the Heroku scheduler add-on"

task :update => :environment do

  agent = Mechanize.new
  @netflix_instant_library = []
  url = "http://instantwatcher.com/titles/all"
  page = agent.get(url)
  page_number = 1
  next_page_url = ""
  list = List.create

  # Save Netflix Instant library
  def search_and_save(page)
    movies = page.search(".title-list-item .title-list-item-link")
    movies.each {|i| @netflix_instant_library<<i.children.to_html }
  end

  pagination = page.search(".pagination a")
  total_pages = pagination[-2].children.to_html.to_i

  total_pages.times do
    search_and_save(page)
    next_page_url = page.search('.next_page').attr('href')
    page = agent.get("#{next_page_url}")
    puts "Saving page ##{page_number}"
    page_number+=1
  end

  # Save IMDB's top 250 list
  top_250 = {}
  i = Imdb::Top250.new()
  i.movies.each do |movie|
    rank = movie.title.split("\n")[0].gsub(".","")
    name = movie.title.split("\n")[1].lstrip
    year = movie.year
    url  = movie.url
    length = movie.length
    plot_summary = movie.plot_summary
    trailer_url = movie.trailer_url
    rating = movie.rating
    if @netflix_instant_library.include?(name)
      movie = Movie.find_or_create_by_name(name: name)
      Tmdb::Api.key(ENV["moviedb"])
      poster = "http://image.tmdb.org/t/p/w500"+Tmdb::Movie.find(name)[0].poster_path
      movie.update_attributes(
        rank: rank,
        list_id: list.id,
        year: year,
        url: url,
        length: length,
        plot_summary: plot_summary,
        trailer_url: trailer_url,
        rating: rating)
      movie.update_attributes(poster: poster) if movie.poster.nil?
    end
  end

  #List.notify_movies_removed
  #List.notify_movies_added

  expiring_agent = Mechanize.new
  expiring_page = expiring_agent.get("http://whatsonnetflixnow.blogspot.com/p/expiring-soon.html")
  expiring = expiring_page.search(".entry-content a")
  expired =  []
  expiring_page.search(".entry-content strike a").each {|i| expired<<i.children.to_html}
  expiring.pop
  expiring.each do |movie|
    expiring_movie = Movie.find_by_name(movie.children.to_html)
    if List.current.include?(expiring_movie) && !expired.include?(expiring_movie.name)
      # Send notification & update expire date
      User.all.each do |user|
        send_text(user.phone, "#{expiring_movie.name} (#{expiring_movie.year}) will soon be removed from Netflix instant. Watch it now before it's too late!")
      end
    end
  end

end
