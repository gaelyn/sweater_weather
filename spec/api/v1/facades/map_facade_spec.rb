require 'rails_helper'

RSpec.describe 'Map Facade' do
  it 'returns latitude and longitude for a location' do
    location = MapFacade.get_lat_long("denver,co")
    expect(response).to be_a(Location)
    expect(response.count).to eq(1)
  end
end
