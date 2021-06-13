require 'rails_helper'

RSpec.describe 'Map Facade' do
  it 'returns latitude and longitude for a location', :vcr do
    location = MapFacade.get_lat_long("denver,co")
    expect(location).to be_a(Location)
  end
end
