class Api::V1::ForecastController < ApplicationController
  def index
    location = MapFacade.get_lat_long(params[:location])
    # forecast = ForecastFacade.get_city_forecast(location)
  end
end
