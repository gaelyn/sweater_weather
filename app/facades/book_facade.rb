class BookFacade
  class << self
    def get_books_by_location(location, quantity)
      city_state = location.split(",")
      json = BookService.fetch_books(city_state, quantity)
      json[:docs].map do |book|
        Book.new(location, json[:numFound], book)
      end
    end
  end
end
