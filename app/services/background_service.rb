class BackgroundService
  class << self
    def fetch_background_image(location)
      response = conn.get("/search/photos?client_id=#{ENV['IMAGE_KEY']}&query=denver,co")
      parse_json(response)
    end

    private

    def conn
      Faraday.new('https://api.unsplash.com')
    end

    def parse_json(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
