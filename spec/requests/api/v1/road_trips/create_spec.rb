require 'rails_helper'

RSpec.describe 'Road Trip Create' do
  describe 'Happy Paths' do
    it 'can create a road trip response', :vcr do
      @user = User.create!(email: "whatever@example.com", password: "password",
                          password_confirmation: "password", api_key: "123456789")
      headers = {
        'Content-Type': "application/json",
        'Accept': "application/json"
      }

      body = {
        "origin": "Denver,CO",
        "destination": "Pueblo,CO",
        "api_key": "123456789"
      }
      post '/api/v1/road_trip', headers: headers, params: body.to_json
      trip = JSON.parse(response.body, symbolize_names: true)
      expect(response).to be_successful
      expect(response.status).to eq(200)
      expect(trip[:data][:attributes]).to have_key(:start_city)
      expect(trip[:data][:attributes]).to have_key(:end_city)
      expect(trip[:data][:attributes]).to have_key(:travel_time)
      expect(trip[:data][:attributes]).to have_key(:weather_at_eta)
      expect(trip[:data][:attributes][:weather_at_eta]).to be_a(Hash)
      expect(trip[:data][:attributes][:weather_at_eta]).to have_key(:temperature)
      expect(trip[:data][:attributes][:weather_at_eta]).to have_key(:conditions)
    end
  end

  describe 'Sad Path' do
    it 'returns a 401 error if api key is incorrect', :vcr do
      @user = User.create!(email: "whatever@example.com", password: "password",
                          password_confirmation: "password", api_key: "123456789")
      headers = {
        'Content-Type': "application/json",
        'Accept': "application/json"
      }

      body = {
        "origin": "Denver,CO",
        "destination": "Pueblo,CO",
        "api_key": "987654321"
      }
      post '/api/v1/road_trip', headers: headers, params: body.to_json
      expect(response.body).to eq("{\"errors\":\"Unauthorized\"}")
      expect(response.status).to eq(401)
    end

    it 'returns a 401 error if api key is missing', :vcr do
      @user = User.create!(email: "whatever@example.com", password: "password",
                          password_confirmation: "password", api_key: "123456789")
      headers = {
        'Content-Type': "application/json",
        'Accept': "application/json"
      }

      body = {
        "origin": "Denver,CO",
        "destination": "Pueblo,CO"
      }
      post '/api/v1/road_trip', headers: headers, params: body.to_json
      expect(response.body).to eq("{\"errors\":\"Unauthorized\"}")
      expect(response.status).to eq(401)
    end
  end

  describe 'Edge Case' do
    it 'accounts for overseas trip', :vcr do
      @user = User.create!(email: "test@test.com", password: "password",
                          password_confirmation: "password", api_key: "321xyz")
      headers = {
        'Content-Type': "application/json",
        'Accept': "application/json"
      }

      body = {
        "origin": "Denver,CO",
        "destination": "London,UK",
        "api_key": "321xyz"
      }
      post '/api/v1/road_trip', headers: headers, params: body.to_json
      trip = JSON.parse(response.body, symbolize_names: true)
      expect(response).to be_successful
      expect(response.status).to eq(200)
      expect(trip[:data][:attributes]).to have_key(:start_city)
      expect(trip[:data][:attributes]).to have_key(:end_city)
      expect(trip[:data][:attributes]).to have_key(:travel_time)
      expect(trip[:data][:attributes][:travel_time]).to eq("impossible")
      expect(trip[:data][:attributes][:weather_at_eta]).to eq({})
    end
  end
end
