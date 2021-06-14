class Api::V1::BooksController < ApplicationController
  def index
    location = MapFacade.get_lat_long(params[:location])
    forecast = ForecastFacade.get_local_weather(location.lat,location.long)
    books = BookFacade.get_books_by_location(params[:location])
    require "pry"; binding.pry

  end
end
