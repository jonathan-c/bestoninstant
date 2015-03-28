class PagesController < ApplicationController
  before_filter :load_list, :only => :subscribe

  def index
    @list = List.last
    @movies = @list.movies
    @notifications = @list.notifications
    if !session[:email].nil?
      @email = true
    end
  end

  def subscribe
    email = params[:user][:email]
    @user = User.create(email: email)
    @gb.lists.subscribe({ :id => @list_id, :email => {:email => email} })
    session[:email] = email
    redirect_to root_path
  end

  private

    def load_list
      @list_id = ENV["list_id"]
      @gb = Gibbon::API.new
    end

end
