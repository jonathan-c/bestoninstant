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

  324.times do
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
    if @netflix_instant_library.include?(name)
      movie = Movie.find_or_create_by_name(name: name)
      movie.update_attributes(rank: rank, list_id: list.id, year: year)
    end
  end

end
