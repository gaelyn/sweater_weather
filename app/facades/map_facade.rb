class MapFacade
  class << self
    def get_lat_long(location)
      json = MapService.fetch_address(location)
      data = json[:results].first[:locations].first[:latLng]
      Location.new(data)
    end

    def get_road_trip(point_a, point_b)
      json = MapService.fetch_route(point_a, point_b)[:route]
      Route.new(json)
    end
  end
end
