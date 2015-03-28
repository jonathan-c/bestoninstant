class EmailapiController < ApplicationController

  def subscribe
    @list_id = ENV["list_id"]
    gb = Gibbon::API.new

    gb.lists.subscribe({
      :id => @list_id,
      :email => {:email => params[:email][:address]}
      })
    @user = User.new(email: params[:email][:address])

    # if @user.save
    #   redirect_to :controller => 'pages', :action => 'confirmation'
    #   format.js { render :js => "window.location.href = '#{pages_confirmation_path}'" }
    # else
    #   root_path
    # end

  end

end
