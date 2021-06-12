class Api::V1::ForecastController < ApplicationController
  def index
    forecast = ForecastFacade.get_city_forecast(params[:location])
  end
end
