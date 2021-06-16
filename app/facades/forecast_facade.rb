class ForecastFacade
  class << self
    def get_local_weather(lat,long)
      json = ForecastService.fetch_forecast(lat,long)
      Forecast.new(json)
    end

    def get_hourly_weather_for_trip(lat,long)
      ForecastService.fetch_forecast(lat,long)[:hourly]
    end
  end
end
