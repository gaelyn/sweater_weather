class MapService
  class << self
    def fetch_address(location)
      response = conn.get("/geocoding/v1/address?key=#{ENV['MAP_KEY']}&location=#{location}")
      parse_json(response)
    end

    private

    def conn
      Faraday.new('http://www.mapquestapi.com')
    end

    def parse_json(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
