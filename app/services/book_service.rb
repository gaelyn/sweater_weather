class BookService
  class << self
    def fetch_books(location, quantity)
      response = conn.get("/search.json?q=#{location[0]}+#{location[1]}&limit=#{quantity}")
      parse_json(response)
    end

    private

    def conn
      Faraday.new('http://openlibrary.org')
    end

    def parse_json(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
