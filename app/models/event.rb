class Event < ActiveRecord::Base
  
  include Rails.application.routes.url_helpers
  
  has_many :users
  has_many :positions
  has_and_belongs_to_many :tags
  
  # this is called for both as_json and to_xml
  def serialize_hash (options={})
    options = {
      # declare what we want to show
      only: [:id, :description],
      include: [users: {only: [:id, :username]}],
      include: [positions: {only: [:longitude, :latitude]}],
      include: [tags: {only: [:name]}]
      }.update(options)
    
    super(options)
  end
  
  def self_link
    { :self => "#{Rails.configuration.baseurl}#{api_event_path(self)}" }
  end

end
