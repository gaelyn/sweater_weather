class Api::V1::BooksController < ApplicationController
  def index
    location = MapFacade.get_lat_long(params[:location])
    forecast = ForecastFacade.get_local_weather(location.lat,location.long).current_weather
    books = BookFacade.get_books_by_location(params[:location], params[:quantity], forecast)
    render json: BooksSerializer.new(books)
  end
end
