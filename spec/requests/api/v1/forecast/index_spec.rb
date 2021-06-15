require 'rails_helper'

RSpec.describe 'Forecast Index' do
  describe 'Happy Paths' do
    it 'can retrive weather for a city', :vcr do
      get '/api/v1/forecast', params: {location: "denver,co"}
      forecast = JSON.parse(response.body, symbolize_names: true)
      expect(response).to be_successful
      expect(response.status).to eq(200)
      expect(forecast).to be_a(Hash)
      expect(forecast[:data][:attributes].count).to eq(3)
      expect(forecast[:data][:attributes]).to have_key(:current_weather)
      expect(forecast[:data][:attributes]).to have_key(:daily_weather)
      expect(forecast[:data][:attributes]).to have_key(:hourly_weather)

      expect(forecast[:data][:attributes][:current_weather]).to have_key(:datetime)
      expect(forecast[:data][:attributes][:current_weather]).to have_key(:sunrise)
      expect(forecast[:data][:attributes][:current_weather]).to have_key(:sunset)
      expect(forecast[:data][:attributes][:current_weather]).to have_key(:temperature)
      expect(forecast[:data][:attributes][:current_weather]).to have_key(:feels_like)
      expect(forecast[:data][:attributes][:current_weather]).to have_key(:humidity)
      expect(forecast[:data][:attributes][:current_weather]).to have_key(:uvi)
      expect(forecast[:data][:attributes][:current_weather]).to have_key(:visibility)
      expect(forecast[:data][:attributes][:current_weather]).to have_key(:conditions)
      expect(forecast[:data][:attributes][:current_weather]).to have_key(:icon)
      expect(forecast[:data][:attributes][:current_weather]).to_not have_key(:pressure)

      expect(forecast[:data][:attributes][:daily_weather]).to be_an(Array)
      expect(forecast[:data][:attributes][:daily_weather].count).to eq(5)
      expect(forecast[:data][:attributes][:daily_weather].first).to have_key(:date)
      expect(forecast[:data][:attributes][:daily_weather].first).to have_key(:sunrise)
      expect(forecast[:data][:attributes][:daily_weather].first).to have_key(:sunset)
      expect(forecast[:data][:attributes][:daily_weather].first).to have_key(:max_temp)
      expect(forecast[:data][:attributes][:daily_weather].first).to have_key(:min_temp)
      expect(forecast[:data][:attributes][:daily_weather].first).to have_key(:conditions)
      expect(forecast[:data][:attributes][:daily_weather].first).to have_key(:icon)
      expect(forecast[:data][:attributes][:daily_weather].first).to_not have_key(:moon_phase)

      expect(forecast[:data][:attributes][:hourly_weather]).to be_an(Array)
      expect(forecast[:data][:attributes][:hourly_weather].count).to eq(8)
      expect(forecast[:data][:attributes][:hourly_weather].first).to have_key(:time)
      expect(forecast[:data][:attributes][:hourly_weather].first).to have_key(:temperature)
      expect(forecast[:data][:attributes][:hourly_weather].first).to have_key(:conditions)
      expect(forecast[:data][:attributes][:hourly_weather].first).to have_key(:icon)
      expect(forecast[:data][:attributes][:hourly_weather].first).to_not have_key(:wind_speed)
    end
  end

  describe 'Sad Path' do
    it 'returns an error if no locaiton provided' do
      get '/api/v1/forecast'
      expect(response.body).to eq("{\"errors\":\"Location not given\"}")
      expect(response.status).to eq(400)
    end
  end
end
