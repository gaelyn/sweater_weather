require 'rails_helper'

RSpec.describe 'Location' do
  describe 'it encapsulates and returns location' do
    it 'returns the location object with lat and long attributes' do
      location_info = {
        "lat": 39.738453,
        "lng": -104.984853
      }
      denver = Location.new(location_info)
      expect(denver.lat).to eq(39.738453)
      expect(denver.long).to eq(-104.984853)
    end
  end
end
