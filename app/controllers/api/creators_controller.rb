class Api::CreatorsController < ApplicationController
  respond_to :json, :xml
  
  def index
    creators = Creator.limit(@limit).offset(@offset).order(:created_at => :desc)
    respond_with creators
  end
  
  def show
    @creator = Creator.find(params[:id])
    respond_with @creator, location: api_creators_path(@creator)
  end
  
  def eventsbycreator
    creators = Creator.find(params[:id])
    respond_with creators.events
  end
  
end
