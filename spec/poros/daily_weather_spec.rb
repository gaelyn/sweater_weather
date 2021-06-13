require 'rails_helper'

RSpec.describe 'Daily Weather' do
  describe 'encapsulates and returns daily weather' do
    it 'shows daily weather attributes' do
      daily = {
            "dt": 1623520800,
            "sunrise": 1623497489,
            "sunset": 1623551306,
            "moonrise": 1623503340,
            "moonset": 1623559500,
            "moon_phase": 0.07,
            "temp": {
                "day": 86.52,
                "min": 61.86,
                "max": 90.1,
                "night": 75.52,
                "eve": 89.73,
                "morn": 61.86
            },
            "feels_like": {
                "day": 83.12,
                "night": 74.34,
                "eve": 85.84,
                "morn": 59.43
            },
            "pressure": 1011,
            "humidity": 17,
            "dew_point": 36.59,
            "wind_speed": 12.1,
            "wind_deg": 143,
            "wind_gust": 19.93,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "clouds": 0,
            "pop": 0,
            "uvi": 11.42
        }
      daily_weather = DailyWeather.new(daily)
      expect(daily_weather.date).to eq("2021-06-12")
      expect(daily_weather.sunrise).to eq("2021-06-12 06:31:29 -0500")
      expect(daily_weather.sunset).to eq("2021-06-12 21:28:26 -0500")
      expect(daily_weather.max_temp).to eq(90.1)
      expect(daily_weather.min_temp).to eq(61.86)
      expect(daily_weather.conditions).to eq("clear sky")
      expect(daily_weather.icon).to eq("01d")
    end
  end
end
