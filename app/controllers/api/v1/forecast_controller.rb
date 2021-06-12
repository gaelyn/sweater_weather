class Api::V1::ForecastController < ApplicationController
  def index
    location = MapFacade.get_lat_long(params[:location])
    current_weather = ForecastFacade.get_current_weather(location.lat,location.long)
    render json: current_weather
  end
end
