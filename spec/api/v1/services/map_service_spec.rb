require 'rails_helper'

RSpec.describe "Map Service" do
  describe "return latitude and longitude" do
    it 'can return lat/long for a given city and state' do
      resutls = MapService.fetch_address("Denver,CO")
      expect(resutls).to be_a(Hash)
    end
  end
end
