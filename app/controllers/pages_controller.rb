class PagesController < ApplicationController

  def index
    @list = List.last
    @movies = @list.movies
    @notifications = @list.notifications
  end

  def subscribe
    @user = User.new(phone: "+1"+params[:area_code][0]+params[:first][0]+params[:last][0])
    if @user.save
      redirect_to root_path, :flash => { :notice => "Your phone number has been added!" }
    else
      redirect_to root_path, :flash => { :error => "Phone number not valid!" }
    end
  end

end
