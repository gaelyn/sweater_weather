require 'rails_helper'

RSpec.describe 'Backgrounds Index' do
  describe 'Happy Paths' do
    it 'can retrive a background image for a city' do
      get '/api/v1/backgrounds', params: {location: "denver,co"}
      image = JSON.parse(response.body, symbolize_names: true)
      expect(response).to be_successful
      expect(response.status).to eq(200)
      expect(image).to be_a(Hash)
      # expect(image[:data][:attributes].count).to eq(1)
    end
  end
end
