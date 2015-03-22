class PagesController < ApplicationController
  def index
    @list = List.last
    @movies = @list.movies
    @notifications = @list.notifications
  end
end
