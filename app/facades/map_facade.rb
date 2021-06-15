class MapFacade
  class << self
    def get_lat_long(location)
      json = MapService.fetch_address(location)
      data = json[:results].first[:locations].first[:latLng]
      Location.new(data)
    end

    def get_road_trip(point_a, point_b)
      json = MapService.fetch_route(point_a, point_b)[:route]
      if json[:routeError][:errorCode] == 2
        RouteError.new(point_a,point_b)
      else
        forecast = forecast(point_b)
        Route.new(json, forecast)
      end
    end

    def forecast(point_b)
      location = MapFacade.get_lat_long(point_b)
      ForecastFacade.get_hourly_weather_for_trip(location.lat,location.long)
    end
  end
end
