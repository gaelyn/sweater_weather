require 'rails_helper'

RSpec.describe "Map Service" do
  describe "return latitude and longitude", :vcr do
    it 'can return lat/long for a given city and state' do
      results = MapService.fetch_address("Denver,CO")
      expect(results).to be_a(Hash)
      expect(results[:results].first[:providedLocation][:location]).to eq("Denver,CO")
    end
  end

  describe 'get road trip info' do
    it 'can return data about a route between two points' do
      results = MapService.fetch_route("Denver,CO", "Pueblo,CO")
      expect(results).to be_a(Hash)
      expect(results).to have_key(:route)
    end
  end
end
