class MapFacade
  class << self
    def get_lat_long(location)
      json = MapService.fetch_address(location)
      Location.new(location)
    end
  end
end
