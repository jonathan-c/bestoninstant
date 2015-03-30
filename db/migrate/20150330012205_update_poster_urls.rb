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
    Movie.find_by_name("Reservoir Dogs").update_attributes(poster: "http://d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/395cf275-reservoirdogs02_05k03h03h03h00y000.jpg")
    Movie.find_by_name("Taxi Driver").update_attributes(poster: "http://d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/a2ff9aee-taxi-driver_05k03h03h03h011000.jpg")
    Movie.find_by_name("Amadeus").update_attributes(poster: "http://d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/1e471cb6-screen-shot-2015-03-29-at-10-02-27-pm_05n03h03h03h016000.png")
    Movie.find_by_name("The Kid").update_attributes(poster: "http://d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/bb2654b1-thekid02_04m03h03h03h00w000.jpg")
    Movie.find_by_name("All About Eve").update_attributes(poster: "http://d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/ee2f1d8e-allabouteve02_06e03h03h03h00y000.jpg")
    Movie.find_by_name("The Apartment").update_attributes(poster: "http://d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/b7148b86-hteapartment02_08403h03h03h00l000.jpg")
    Movie.find_by_name("Chinatown").update_attributes(poster: "http://d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/3e781221-chinatown02_06603h03h03h01z000.jpg")
    Movie.find_by_name("Good Will Hunting").update_attributes(poster: "http://d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/04882cf9-goodwillhunting02_06603h03h03h003000.jpg")
    Movie.find_by_name("The General").update_attributes(poster: "http://d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/2f4240ba-thegeneral02_04r03h03h03h00p000.jpg")
    Movie.find_by_name("Lock, Stock and Two Smoking Barrels").update_attributes(poster: "http://d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/a1b0e25a-lock-stock-two-smoking-barrels_06603h03h03h01m000.jpg")
    Movie.find_by_name("The Wolf of Wall Street").update_attributes(poster: "http://d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/e2bbad42-wolfie_07l05203h03h02300f.jpg")
    Movie.find_by_name("Rang De Basanti").update_attributes(poster: "http://d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/c4d5bc73-rangdebasanti_03h04z03h03h00000y.jpg")
    Movie.find_by_name("Fargo").update_attributes(poster: "http://d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/2a0be3c1-fargo02_06d03h03h03h01n000.jpg")
    Movie.find_by_name("Trainspotting").update_attributes(poster: "http://d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/3fcc5431-trainspotting_05803h03h03h00v000.jpg")
    Movie.find_by_name("Mary and Max").update_attributes(poster: "http://d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/aa0292f5-mary-and-max-poster_04i03h03h03h00i000.jpg")
    Movie.find_by_name("Kill Bill: Vol. 1").update_attributes(poster: "http://d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/65dee28f-killbill02_05903h03h03h00w000.jpg")
    Movie.find_by_name("There Will Be Blood").update_attributes(poster: "http://d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/bc677f56-therewillbeblood_03h05903h03h00000a.jpg")
    Movie.find_by_name("Stand by Me").update_attributes(poster: "http://d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/fdb4c705-standbyme_03h05003h03h000012.jpg")
    Movie.find_by_name("Annie Hall").update_attributes(poster: "http://d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/b25411f7-anniehall_06e03h03h03h01g000.png")
    Movie.find_by_name("Amores Perros").update_attributes(poster: "http://d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/fd12f976-amorressperros02_06603h03h03h00z000.jpg")
    Movie.find_by_name("Persona").update_attributes(poster: "http://d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/6a8cb97f-persona_03h04x03h03h00000q.jpg")
    Movie.find_by_name("Infernal Affairs").update_attributes(poster: "http://d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/e793fa5a-infernal_05803h03h03h00v000.jpg")
    Movie.find_by_name("Stalker").update_attributes(poster: "http://d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/632a623a-stalker_04n03h03h03h00l000.jpg")
    Movie.find_by_name("High Noon").update_attributes(poster: "http://d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/449e91b1-highnoon_04203h03h03h00a000.jpg")
    Movie.find_by_name("Groundhog Day").update_attributes(poster: "http://d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/7e320f23-groundhogday_05203h03h03h010000.jpg")
    Movie.find_by_name("Beauty and the Beast").update_attributes(poster: "http://d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/8b1cf3d0-beautyandbeast_04n03h03h03h00l000.jpeg")
    Movie.find_by_name("The Hustler").update_attributes(poster: "http://d9hhrg4mnvzow.cloudfront.net/unbouncepages.com/-1245012454124881287057/49ed5f96-thehustler_05k03h03h03h011000.jpg")
  end

  def down
  end
end
