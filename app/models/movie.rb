class Movie < ActiveRecord::Base
  attr_accessible :name, :rank, :year, :list_id, :url, :poster, :length, :plot_summary, :trailer_url, :rating
  has_many :list_movies
  has_many :lists, :through => :list_movies
  validates :name, uniqueness: true

end
