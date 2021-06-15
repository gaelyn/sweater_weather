class Route
  attr_reader :id, :start_city, :end_city, :travel_time, :hours_to_arrival
  def initialize(data, forecast)
    @id = nil
    @start_city = "#{data[:locations][0][:adminArea5]},#{data[:locations][0][:adminArea3]}"
    @end_city = "#{data[:locations][1][:adminArea5]},#{data[:locations][1][:adminArea3]}"
    @travel_time = "#{data[:formattedTime].split(":")[0]} hour(s) and #{data[:formattedTime].split(":")[1]} minutes"
    @hours_to_arrival = data[:formattedTime].split(":").first.to_i
    @weather_at_eta = forecast[@hours_to_arrival]
  end

  def weather_at_eta
    if @weather_at_eta.nil?
      "Forecast not available"
    else
      hourly_weather = HourlyWeather.new(@weather_at_eta)

      {
        temperature: hourly_weather.temperature,
        conditions: hourly_weather.conditions
      }
    end
  end
end
