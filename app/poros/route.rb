class Route
  attr_reader :id, :start_city, :end_city, :travel_time
  def initialize(data)
    @id = nil
    @start_city = "#{data[:locations][0][:adminArea5]},#{data[:locations][0][:adminArea3]}"
    @end_city = "#{data[:locations][1][:adminArea5]},#{data[:locations][1][:adminArea3]}"
    @travel_time = Time.at(data[:realTime]).utc.strftime("%H hour(s) and %M minutes")
    # @weather_at_eta = HourlyWeather.new()
  end
end
# hours = Time.at(json[:realTime]).utc.strftime("%H").to_i
# travel time = Time.at(json[:realTime]).utc.strftime("%H hour(s) and %M minutes")
