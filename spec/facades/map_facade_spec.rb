require 'rails_helper'

RSpec.describe 'Map Facade' do
  it 'returns latitude and longitude for a location', :vcr do
    location = MapFacade.get_lat_long("denver,co")
    expect(location).to be_a(Location)
  end

  it 'returns a route between two given destinations', :vcr do
    route = MapFacade.get_road_trip("Denver,CO", "Pueblo,CO")
    expect(route).to be_a(Route)
    expect(route.weather_at_eta).to be_a(Hash)
  end

  it 'returns hourly forecast for destination', :vcr do
    forecast = MapFacade.forecast("Pueblo,CO")
    expect(forecast).to be_an(Array)
    expect(forecast.first).to be_an(HourlyWeather)
    expect(forecast.count).to eq(8)
  end
end
