require 'rails_helper'

RSpec.describe 'Backgrounds Index' do
  describe 'Happy Paths' do
    it 'can retrive a background image for a city', :vcr do
      get '/api/v1/backgrounds', params: {location: "denver,co"}
      image = JSON.parse(response.body, symbolize_names: true)
      expect(response).to be_successful
      expect(response.status).to eq(200)
      expect(image).to be_a(Hash)
      expect(image[:data][:attributes].count).to eq(3)
      expect(image[:data][:attributes]).to have_key(:location)
      expect(image[:data][:attributes]).to have_key(:image_url)
      expect(image[:data][:attributes]).to have_key(:credit)
      expect(image[:data][:attributes][:credit]).to have_key(:source)
      expect(image[:data][:attributes][:credit]).to have_key(:author)
      expect(image[:data][:attributes][:credit]).to have_key(:author_profile)
    end
  end

  describe 'Sad Path' do
    it 'shows error if no location given' do
      get '/api/v1/backgrounds'
      expect(response.body).to eq("{\"errors\":\"Location not given\"}")
      expect(response.status).to eq(400)
    end
  end
end
