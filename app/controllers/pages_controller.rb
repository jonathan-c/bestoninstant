class PagesController < ApplicationController
  def index
    @list = List.last
    @movies = @list.movies
  end
end
