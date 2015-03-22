class PagesController < ApplicationController
  def index
    @list = List.last.movies
  end
end
