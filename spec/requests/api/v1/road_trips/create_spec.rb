require 'rails_helper'

RSpec.describe 'Road Trip Create' do
  describe 'Happy Paths' do
    it 'can create a road trip response' do
      headers = {
        'Content-Type' => "application/json",
        'Accept' => "application/json"
      }

      body = {
        "origin": "Denver,CO",
        "destination": "Pueblo,CO",
        "api_key": "jgn983hy48thw9begh98h4539h4"
      }
      post '/api/v1/road_trip', headers: headers, params: body.to_json
      trip = JSON.parse(response.body, symbolize_names: true)
      expect(response).to be_successful
      expect(response.status).to eq(200)
      expect(trip[:data][:attributes]).to have_key(:start_city)
      expect(trip[:data][:attributes]).to have_key(:end_city)
      expect(trip[:data][:attributes]).to have_key(:travel_time)
      # expect(trip[:data][:attributes]).to have_key(:weather_at_eta)
      # expect(trip[:data][:attributes][:weather_at_eta]).to be_a(Hash)
      # expect(trip[:data][:attributes][:weather_at_eta]).to have_key(:temperature)
      # expect(trip[:data][:attributes][:weather_at_eta]).to have_key(:conditions)
    end
  end
end
