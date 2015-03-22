require 'open-uri'

agent = Mechanize.new
@netflix_instant_library = []
url = "http://instantwatcher.com/titles/all"
page = agent.get(url)
page_number = 1
next_page_url = ""

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
  title = movie.title.split("\n")[1].lstrip
  # year = movie.year
  top_250[rank] = title
end

# Save Best On Instant list
list = List.create
top_250.each do |k,v|
  if @netflix_instant_library.include?(v)
    movie = Movie.find_or_create_by_name(name: v)
    movie.update_attributes(rank: k, list_id: list.id)
  end
end
