class RouteError
  attr_reader :id, :start_city, :end_city, :travel_time, :weather_at_eta

  def initialize(point_a, point_b)
    @id = nil
    @start_city = point_a
    @end_city = point_b
    @travel_time = 'impossible'
    @weather_at_eta = {}
  end
end
