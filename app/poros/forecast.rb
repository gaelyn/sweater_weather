class Forecast
  attr_reader :current_weather, :id
  def initialize(data)
    @id = nil
    @current_weather = CurrentWeather.new(data[:current])
  end
end
