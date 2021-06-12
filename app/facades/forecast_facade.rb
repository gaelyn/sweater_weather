class ForecastFacade
  class << self
    def get_local_weather(lat,long)
      json = ForecastService.fetch_forecast(lat,long)
      Forecast.new(json)
    end
  end
end
