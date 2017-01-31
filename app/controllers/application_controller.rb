class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def logged_in?
  	if session[:id] != nil
  		return true
  	else
  		return false
  	end
  end

  def current_user
    if logged_in?
	  	@current_user ||= User.find(session[:id])
	  	return @current_user
    end
  end

end
