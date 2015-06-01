class Movie < ActiveRecord::Base
  attr_accessible :name, :rank, :year, :list_id, :url, :poster, :length, :plot_summary, :trailer_url, :rating
  has_and_belongs_to_many :lists
  validates :name, uniqueness: true

end
