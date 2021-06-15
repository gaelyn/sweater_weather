class Route
  attr_reader :id, :start_city, :end_city, :travel_time, :hours_to_arrival
  def initialize(data, forecast)
    @id = nil
    @start_city = "#{data[:locations][0][:adminArea5]},#{data[:locations][0][:adminArea3]}"
    @end_city = "#{data[:locations][1][:adminArea5]},#{data[:locations][1][:adminArea3]}"
    @travel_time = Time.at(data[:realTime]).utc.strftime("%H hour(s) and %M minutes")
    @hours_to_arrival = Time.at(data[:realTime]).utc.strftime("%H").to_i
    @weather_at_eta = forecast
  end

  def weather_at_eta
    hourly_weather = @weather_at_eta[@hours_to_arrival]
    {
      temperature: hourly_weather.temperature,
      conditions: hourly_weather.conditions
    }
  end
end
