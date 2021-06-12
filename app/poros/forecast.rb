class Forecast
  attr_reader :id, :current_weather
  def initialize(data)
    @id = nil
    @current_weather = CurrentWeather.new(data[:current])
    @daily_weather = data[:daily]
    # @daily_weather = DailyWeather.new(data[:daily])
    # @hourly_weather = HourlyWeather.new(data[:hourly])
  end

  def daily_weather
    @daily_weather.map do |day|
      DailyWeather.new(day)
    end
  end
end
