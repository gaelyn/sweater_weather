require 'rails_helper'

RSpec.describe 'WeatherFacade' do
  it 'returns forecast objects', :vcr do
    location = MapFacade.get_lat_long('denver,co')
    response = ForecastFacade.get_local_weather(location.lat, location.long)
    expect(response).to be_a(Forecast)
    expect(response.current_weather).to be_a(CurrentWeather)
    expect(response.daily_weather).to be_an(Array)
    expect(response.daily_weather.first).to be_a(DailyWeather)
    expect(response.hourly_weather).to be_an(Array)
    expect(response.hourly_weather.first).to be_a(HourlyWeather)
  end
end
