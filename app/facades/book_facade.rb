class BookFacade
  class << self
    def get_books_by_location(location, qty)
      city_state = location.split(",")
      json = BookService.fetch_books(city_state, qty)
      # Book.new(json)
    end
  end
end
