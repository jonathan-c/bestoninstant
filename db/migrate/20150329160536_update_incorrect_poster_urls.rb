class UpdateIncorrectPosterUrls < ActiveRecord::Migration
  def up
    city_of_god = Movie.find_by_name("City of God")
    city_of_god.update_attributes(poster: "http://image.tmdb.org/t/p/w500/k4BAPrE5WkNLvpsPsiMfu8W4Zyi.jpg") if city_of_god

    the_kid = Movie.find_by_name("The Kid")
    the_kid.update_attributes(poster: "http://image.tmdb.org/t/p/w500/6hEfCdZ2PMbu3XH8jVRKCdROlyD.jpg") if the_kid

    stand_by_me = Movie.find_by_name("Stand by Me")
    stand_by_me.update_attributes(poster: "http://image.tmdb.org/t/p/w500/abLeo89r15NBTFfosXveyosBrHE.jpg") if stand_by_me
  end

  def down
    city_of_god = Movie.find_by_name("City of God")
    city_of_god.update_attributes(poster: "http://image.tmdb.org/t/p/w500/snQQlZFUHFIffxEgf518wcFv43P.jpg") if city_of_god

    the_kid = Movie.find_by_name("The Kid")
    the_kid.update_attributes(poster: "http://image.tmdb.org/t/p/w500/oVbUHLxUN9rWCeKPB8vXmzsU4wJ.jpg") if the_kid

    stand_by_me = Movie.find_by_name("Stand by Me")
    stand_by_me.update_attributes(poster: "http://image.tmdb.org/t/p/w500/aw2WShkMTeffGy5hagCpI2ZVcSa.jpg") if stand_by_me
  end
end
