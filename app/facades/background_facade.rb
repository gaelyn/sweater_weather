class BackgroundFacade
  class << self
    def get_city_image(location)
      data = BackgroundService.fetch_background_image(location)
      json = data[:results].first
      json[:location] = location
      Image.new(json)
    end
  end
end
