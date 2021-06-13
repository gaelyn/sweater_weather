class HourlyWeather
  def initialize(data)
    @time = Time.at(data[:dt]).strftime ("%H:%M:%S")
    @temperature = data[:temp]
    @conditions = data[:weather].first[:main]
    @icon = data[:weather].first[:icon]
  end
end
