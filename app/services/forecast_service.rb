class ForecastService
  class << self
    private
    
    def conn
      Faraday.new('https://api.openweathermap.org')
    end

    def parse_json(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
