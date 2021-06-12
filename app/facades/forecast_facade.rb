class ForecastFacade
  class << self
    def get_cuurent_weather(lat,long)
      json = ForecastService.fetch_forecast(lat,long)[:current]
      CurrentWeather.new(json)
    end
  end
end
