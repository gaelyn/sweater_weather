class BookFacade
  class << self
    def get_books_by_location(location, quantity, forecast)
      city_state = location.split(",")
      json = BookService.fetch_books(city_state, quantity)
      Book.new(location, json[:numFound], json[:docs], forecast)
    end
  end
end
