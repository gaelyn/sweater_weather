class MapFacade
  class << self
    def get_lat_long(location)
      json = MapService.fetch_address(location)
      data = json[:results].first[:locations].first[:latLng]
      Location.new(data)
    end

    def get_road_trip(point_a, point_b)
      json = MapService.fetch_route(point_a, point_b)[:route]
      forecast = forecast(point_b)
      Route.new(json, forecast)
    end

    def forecast(point_b)
      location = MapFacade.get_lat_long(point_b)
      ForecastFacade.get_local_weather(location.lat,location.long).hourly_weather
    end
  end
end
