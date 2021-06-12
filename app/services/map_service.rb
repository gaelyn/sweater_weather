class MapService
  class << self
    def fetch_address(location)
      response = conn.get("/geocoding/v1/address?key=#{ENV['MAP_KEY']}&#{location}")
      require "pry"; binding.pry
    end

    private

    def conn
      Faraday.new('http://www.mapquestapi.com')
      # Faraday.new('http://www.mapquestapi.com') do |faraday|
      #   faraday.headers['key'] = ENV['MAP_KEY']
      # end
    end

    def parse_json(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
