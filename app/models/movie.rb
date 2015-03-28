class Movie < ActiveRecord::Base
  attr_accessible :name, :rank, :year, :list_id, :url, :poster, :length, :plot_summary, :trailer_url, :rating
  belongs_to :list
  validates :name, uniqueness: true

end
