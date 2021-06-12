class Api::V1::ForecastController < ApplicationController
  def index
    location = MapFacade.get_lat_long(params[:location])
    forecast = ForecastFacade.get_cuurent_weather(location.lat,location.long)
    require "pry"; binding.pry
  end
end
