class ForecastService
  class << self
    def fetch_forecast(lat,long)
      response = conn.get("/data/2.5/onecall?lat=#{lat}&lon=#{long}&exclude=minutely&appid=#{ENV['WEATHER_KEY']}&units=imperial")
      parse_json(response)
    end
    
    private

    def conn
      Faraday.new('https://api.openweathermap.org')
    end

    def parse_json(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
