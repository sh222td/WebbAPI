class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  private 
  
  def current_user
    @current_user ||= User.find(session[:userid]) if session[:userid]
  end
  
  #Method that checks if the current_user is nil or not, redirects the user to the index page if no user is set.
  def require_login
    if current_user.nil? then
      redirect_to root_path
    end
  end
    
    helper_method :current_user
    
end
