class ApikeysController < ApplicationController
  before_action :require_login
  
  def index
    users = User.all
  end
  def show
  
  end
  
  # Creates a new API-key to the user
  def add
    current_user.update_attribute(:api_key, SecureRandom.hex)
    redirect_to apikey_path
  end
  
end
