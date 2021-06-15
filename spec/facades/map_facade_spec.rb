require 'rails_helper'

RSpec.describe 'Map Facade' do
  it 'returns latitude and longitude for a location', :vcr do
    location = MapFacade.get_lat_long("denver,co")
    expect(location).to be_a(Location)
  end

  it 'returns a route between two given destinations' do
    route = MapFacade.get_road_trip("Denver,CO", "Pueblo,CO")
    expect(route).to be_a(Route)
    expect(route.weather_at_eta).to be_a(Hash)
  end

  xit 'returns hourly forecast for destination' do
    forecast = MapFacade.forecast("Pueblo,CO")
  end
end
