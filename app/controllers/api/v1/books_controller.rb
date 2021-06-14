class Api::V1::BooksController < ApplicationController
  def index
    location = MapFacade.get_lat_long(params[:location])
    forecast = ForecastFacade.get_local_weather(location.lat,location.long)
    require "pry"; binding.pry
    books = BookFacade.get_books_by_location(params[:location], params[:quantity])
    render json: BooksSerializer.new(books)
  end
end
