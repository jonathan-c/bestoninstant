class UpdatePosterUrls < ActiveRecord::Migration
  def up
    Movie.find_by_name("Pulp Fiction").update_attributes(poster: "http://d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/65437ea2-pulpfiction03_03h05103h03h00000s.jpg")
    Movie.find_by_name("Forrest Gump").update_attributes(poster: "http://d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/da457251-forest_06603h03h03h01c000.jpg")
    Movie.find_by_name("City of God").update_attributes(poster: "http://d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/893fb521-cityofgod02_06903h03h03h01e000.jpg")
    Movie.find_by_name("The Silence of the Lambs").update_attributes(poster: "http://d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/9c2bf2d7-silenceofthelambs03_06503h03h03h011000.jpg")
    Movie.find_by_name("Once Upon a Time in the West").update_attributes(poster: "http://d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/9c5b797f-onceuponatime_05203h03h03h00h000.jpg")
    Movie.find_by_name("Life Is Beautiful").update_attributes(poster: "http://d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/31fe3d52-lifeisbeautiful_03p03h03h03h004000.jpg")
    Movie.find_by_name("Terminator 2: Judgment Day").update_attributes(poster: "http://d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/13149f63-terminator202_05k03h03h03h011000.jpg")
    Movie.find_by_name("Cinema Paradiso").update_attributes(poster: "//d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/f82c1594-cinemaparadiso02_04203h03h03h00a000.jpg")
    Movie.find_by_name("Django Unchained").update_attributes(poster: "http://d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/8b467c40-djangofox_06603h03h03h01o000.jpg")
    Movie.find_by_name("American Beauty").update_attributes(poster: "http://d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/668b4b5d-americanbeauty_05l03h03h03h012000.jpg")
  end

  def down
  end
end
