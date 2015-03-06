class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  OFFSET = 0
  LIMIT = 20
  
  # check if user wants offset/limit
  def offset_params
    if params[:offset].present?
      @offset = params[:offset].to_i
    end
    if params[:limit].present?
      @limit = params[:limit].to_i
    end
    @offset ||= OFFSET
    @limit  ||= LIMIT
  end  
  
  # checks if a apikey exists
  def api_key
    api_key = request.headers['X-ApiKey']
    return true
  end
  
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
