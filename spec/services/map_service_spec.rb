require 'rails_helper'

RSpec.describe "Map Service" do
  describe "return latitude and longitude", :vcr do
    it 'can return lat/long for a given city and state' do
      results = MapService.fetch_address("Denver,CO")
      expect(results).to be_a(Hash)
    end
  end
end
