class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.authenticate(params[:email], params[:password])
  if user
    session[:user_id] = user.id
    redirect_to links_path, :notice => "Logged in!"
  else
    flash.now.alert = "Invalid email or password"
    render "new"
  end #end if
  end #end create

  def destroy
    session[:user_id] = nil
    redirect_to new_session_path, :notice => "Logged out!"
  end

  def show

  end


end
