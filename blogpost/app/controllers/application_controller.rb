class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authorize
  protected
  def authorize
 	#unless User.find_by(id: session[:user_id])
 		#redirect_to login_url, notice: "You thought you could gain unauthorised access? LOL"
 	#end
  end

  def home
  end	

  def test
  end

  def demo
  	#ruby code here
  end

end
