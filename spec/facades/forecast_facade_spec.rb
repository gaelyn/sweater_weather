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

  it 'returns Hourly Weather objects for trip', :vcr do
    location = MapFacade.get_lat_long('Los Angeles, CA')
    response = ForecastFacade.get_hourly_weather_for_trip(location.lat, location.long)
    expect(response).to be_an(Array)
    expect(response.first).to be_a(Hash)
    expect(response.count).to eq(48)
  end
end
