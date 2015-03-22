class Api::TagsController < ApplicationController
  respond_to :json, :xml
  
  def index
    tags = Tag.limit(@limit).offset(@offset).order(:created_at => :desc)
    respond_with tags
  end
  
  def show
    @tag = Tag.find(params[:id])
    respond_with @tag, location: api_tags_path(@tag)
    
    rescue ActiveRecord::RecordNotFound
    @ErrorMessage.new("Could not find that resource. Are you using the right tag_id?", "The tag was not found!")
    respond_with @error, status: :not_found
  end
  
  def tagevents
    tags = Tag.find(params[:id])
    respond_with tags.events
  end
  
  def api_authenticate 
    if request.headers["Authorization"].present?
      # Take the last part in The header (ignore Bearer)
      auth_header = request.headers['Authorization'].split(' ').last
      key = User.find_by_api_key(auth_header)
      if !key
        render json: { error: 'The provided apikey wasn´t correct' }, status: :bad_request 
      end
    else
      render json: { error: 'Need to include the Authorization header' }, status: :forbidden # The header isn´t present
    end
  end
  
end
