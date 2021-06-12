class Api::V1::ForecastController < ApplicationController
  def index
    location = MapFacade.get_lat_long(params[:location])
    require "pry"; binding.pry
    forecast = ForecastFacade.get_cuurent_weather(location.lat,location.long)
  end
end
