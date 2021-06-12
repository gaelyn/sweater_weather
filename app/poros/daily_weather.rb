class DailyWeather
  def initialize(data)
    @date = Time.at(data[:dt]).localtime
    @sunrise = Time.at(data[:sunrise]).localtime
    @sunset = Time.at(data[:sunset]).localtime
    @max_temp = data[:temp][:max]
    @min_temp = data[:temp][:min]
    @conditions = data[:weather].first[:description]
    @icon = data[:weather].first[:icon]
  end
end
