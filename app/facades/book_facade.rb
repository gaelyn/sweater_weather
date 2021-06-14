class BookFacade
  class << self
    def get_books_by_location(location, quantity)
      forecast = get_weather(location)
      city_state = location.split(",")
      json = BookService.fetch_books(city_state, quantity)
      Book.new(location, json[:numFound], json[:docs], forecast)
    end

    def get_weather(location)
      location = MapFacade.get_lat_long(location)
      forecast = ForecastFacade.get_local_weather(location.lat,location.long).current_weather
    end
  end
end
