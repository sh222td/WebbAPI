class API::PositionsController < ApplicationController
  
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
