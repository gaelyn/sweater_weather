require 'rails_helper'

RSpec.describe 'Hourly Weather' do
  describe 'encapsulates and returns hourly weather' do
    it 'shows hourly weather attributes' do
      hourly = {
          "dt": 1623531600,
          "temp": 89.02,
          "feels_like": 85.62,
          "pressure": 1010,
          "humidity": 22,
          "dew_point": 45.28,
          "uvi": 8.78,
          "clouds": 0,
          "visibility": 10000,
          "wind_speed": 7.76,
          "wind_deg": 79,
          "wind_gust": 8.75,
          "weather": [
              {
                  "id": 800,
                  "main": "Clear",
                  "description": "clear sky",
                  "icon": "01d"
              }
            ]
      }
      hourly_weather = HourlyWeather.new(hourly)
      expect(hourly_weather.time).to eq("21:00:00")
      expect(hourly_weather.temperature).to eq(89.02)
      expect(hourly_weather.conditions).to eq("Clear")
      expect(hourly_weather.icon).to eq("01d")
    end
  end
end
