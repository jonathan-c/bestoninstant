class Movie < ActiveRecord::Base
  attr_accessible :name, :rank, :year, :list_id, :url, :poster, :length, :plot_summary, :trailer_url, :rating
  belongs_to :list
  validates :name, uniqueness: true

  # def subscribe
  #   @list_id = ENV["list_id"]
  #   gb = Gibbon::API.new
  #
  #   gb.lists.subscribe({
  #     :id => @list_id,
  #     :email => {:email => params[:email][:address]}
  #     })
  # end
end
