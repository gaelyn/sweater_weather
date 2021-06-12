class ForecastFacade
  class << self
    def get_city_forecast(lat,long)
      json = ForecastService.fetch_forecast(lat,long)
    end
  end
end
