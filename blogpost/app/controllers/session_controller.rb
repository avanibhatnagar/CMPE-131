class SessionController < ApplicationController
  skip_before_action :authorize
  def new
  end

  def create
  	user = User.find_by(name:params[:name])
  	if user and user.authenticate(params[:password])
  		session[:user_id]=user.id
  	else
  		redirect_to login_url, alert:"Invalide Username or Password"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to login_url, alert:"Success Logout"
  end
end
