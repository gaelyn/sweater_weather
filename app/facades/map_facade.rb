class MapFacade
  class << self
    def get_lat_long(location)
      json = MapService.fetch_address(location)
      data = json[:results].first[:locations].first[:latLng]
      Location.new(data)
    end
  end
end