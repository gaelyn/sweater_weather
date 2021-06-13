class Api::V1::ForecastController < ApplicationController
  def index
    if params[:location]
      location = MapFacade.get_lat_long(params[:location])
      current_weather = ForecastFacade.get_local_weather(location.lat,location.long)
      render json: ForecastSerializer.new(current_weather)
    else
      render json: { errors: 'Location not given' }, status: :bad_request
    end
  end
end
