class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.authenticate(params[:email], params[:password])
	if user
		session[:user_id] = 5
		redirect_to links_path, :notice => "Logged in!"
	else
		flash.now.alert = "Invalid email or passord"
		render "new"
	end #end if
  end #end create

  def destroy
  	session[:user_id] = nil
  	redirect_to links_path, :notice => "Logged out!"
  end

end
