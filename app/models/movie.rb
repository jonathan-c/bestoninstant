class Movie < ActiveRecord::Base
  attr_accessible :name, :rank, :year, :list_id
  belongs_to :list
  validates :name, uniqueness: true
end
