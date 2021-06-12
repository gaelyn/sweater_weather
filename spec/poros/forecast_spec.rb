require 'rails_helper'

RSpec.describe 'CurrentWeather' do
  describe 'encapsulates and returns current weather' do
    it 'shows current weather attributes' do
      data = {
    "lat": 39.7392,
    "lon": -104.9847,
    "timezone": "America/Denver",
    "timezone_offset": -21600,
    "current": {
        "dt": 1623532152,
        "sunrise": 1623497489,
        "sunset": 1623551306,
        "temp": 89.02,
        "feels_like": 85.62,
        "pressure": 1010,
        "humidity": 22,
        "dew_point": 45.28,
        "uvi": 8.78,
        "clouds": 0,
        "visibility": 10000,
        "wind_speed": 1.01,
        "wind_deg": 296,
        "wind_gust": 5.01,
        "weather": [
            {
                "id": 800,
                "main": "Clear",
                "description": "clear sky",
                "icon": "01d"
            }
        ]
    },
    "hourly": [
        {
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
            ],
            "pop": 0
        },
        {
            "dt": 1623535200,
            "temp": 89.8,
            "feels_like": 86.05,
            "pressure": 1009,
            "humidity": 19,
            "dew_point": 42.08,
            "uvi": 6.02,
            "clouds": 0,
            "visibility": 10000,
            "wind_speed": 9.82,
            "wind_deg": 98,
            "wind_gust": 9.1,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623538800,
            "temp": 90.1,
            "feels_like": 86.25,
            "pressure": 1009,
            "humidity": 18,
            "dew_point": 40.93,
            "uvi": 3.53,
            "clouds": 1,
            "visibility": 10000,
            "wind_speed": 11.7,
            "wind_deg": 111,
            "wind_gust": 11.72,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623542400,
            "temp": 89.73,
            "feels_like": 85.84,
            "pressure": 1008,
            "humidity": 17,
            "dew_point": 39.16,
            "uvi": 1.62,
            "clouds": 2,
            "visibility": 10000,
            "wind_speed": 11.34,
            "wind_deg": 122,
            "wind_gust": 7.29,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623546000,
            "temp": 88.25,
            "feels_like": 84.56,
            "pressure": 1008,
            "humidity": 17,
            "dew_point": 37.98,
            "uvi": 0.54,
            "clouds": 7,
            "visibility": 10000,
            "wind_speed": 12.1,
            "wind_deg": 143,
            "wind_gust": 10.89,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623549600,
            "temp": 84.49,
            "feels_like": 81.61,
            "pressure": 1008,
            "humidity": 19,
            "dew_point": 37.78,
            "uvi": 0,
            "clouds": 9,
            "visibility": 10000,
            "wind_speed": 5.79,
            "wind_deg": 167,
            "wind_gust": 11.43,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623553200,
            "temp": 79.66,
            "feels_like": 79.66,
            "pressure": 1010,
            "humidity": 27,
            "dew_point": 41.94,
            "uvi": 0,
            "clouds": 7,
            "visibility": 10000,
            "wind_speed": 11.86,
            "wind_deg": 142,
            "wind_gust": 19.93,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01n"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623556800,
            "temp": 75.02,
            "feels_like": 73.81,
            "pressure": 1011,
            "humidity": 34,
            "dew_point": 45.01,
            "uvi": 0,
            "clouds": 5,
            "visibility": 10000,
            "wind_speed": 9.04,
            "wind_deg": 180,
            "wind_gust": 14.32,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01n"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623560400,
            "temp": 75.52,
            "feels_like": 74.34,
            "pressure": 1012,
            "humidity": 33,
            "dew_point": 43.93,
            "uvi": 0,
            "clouds": 4,
            "visibility": 10000,
            "wind_speed": 5.44,
            "wind_deg": 214,
            "wind_gust": 8.16,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01n"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623564000,
            "temp": 74.93,
            "feels_like": 73.53,
            "pressure": 1012,
            "humidity": 30,
            "dew_point": 41.29,
            "uvi": 0,
            "clouds": 3,
            "visibility": 10000,
            "wind_speed": 4.54,
            "wind_deg": 255,
            "wind_gust": 7.58,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01n"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623567600,
            "temp": 73.56,
            "feels_like": 71.94,
            "pressure": 1012,
            "humidity": 28,
            "dew_point": 38.14,
            "uvi": 0,
            "clouds": 0,
            "visibility": 10000,
            "wind_speed": 2.37,
            "wind_deg": 243,
            "wind_gust": 3.49,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01n"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623571200,
            "temp": 71.67,
            "feels_like": 70,
            "pressure": 1013,
            "humidity": 31,
            "dew_point": 38.8,
            "uvi": 0,
            "clouds": 0,
            "visibility": 10000,
            "wind_speed": 3.87,
            "wind_deg": 124,
            "wind_gust": 6.6,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01n"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623574800,
            "temp": 70.52,
            "feels_like": 68.77,
            "pressure": 1013,
            "humidity": 32,
            "dew_point": 38.71,
            "uvi": 0,
            "clouds": 0,
            "visibility": 10000,
            "wind_speed": 3.69,
            "wind_deg": 255,
            "wind_gust": 4.36,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01n"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623578400,
            "temp": 69.57,
            "feels_like": 67.68,
            "pressure": 1014,
            "humidity": 31,
            "dew_point": 37.31,
            "uvi": 0,
            "clouds": 0,
            "visibility": 10000,
            "wind_speed": 3.04,
            "wind_deg": 281,
            "wind_gust": 4.74,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01n"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623582000,
            "temp": 68.7,
            "feels_like": 66.72,
            "pressure": 1014,
            "humidity": 31,
            "dew_point": 36.32,
            "uvi": 0,
            "clouds": 0,
            "visibility": 10000,
            "wind_speed": 1.68,
            "wind_deg": 271,
            "wind_gust": 2.15,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01n"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623585600,
            "temp": 68.29,
            "feels_like": 66.22,
            "pressure": 1015,
            "humidity": 30,
            "dew_point": 35.2,
            "uvi": 0,
            "clouds": 0,
            "visibility": 10000,
            "wind_speed": 1.66,
            "wind_deg": 213,
            "wind_gust": 1.7,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623589200,
            "temp": 70.68,
            "feels_like": 68.77,
            "pressure": 1015,
            "humidity": 28,
            "dew_point": 35.22,
            "uvi": 0.54,
            "clouds": 0,
            "visibility": 10000,
            "wind_speed": 1.45,
            "wind_deg": 170,
            "wind_gust": 2.26,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623592800,
            "temp": 74.3,
            "feels_like": 72.55,
            "pressure": 1015,
            "humidity": 24,
            "dew_point": 34.88,
            "uvi": 1.7,
            "clouds": 0,
            "visibility": 10000,
            "wind_speed": 1.39,
            "wind_deg": 130,
            "wind_gust": 1.81,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623596400,
            "temp": 78.33,
            "feels_like": 76.86,
            "pressure": 1014,
            "humidity": 21,
            "dew_point": 35.1,
            "uvi": 3.71,
            "clouds": 0,
            "visibility": 10000,
            "wind_speed": 1.97,
            "wind_deg": 96,
            "wind_gust": 1.19,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623600000,
            "temp": 82.26,
            "feels_like": 79.99,
            "pressure": 1014,
            "humidity": 19,
            "dew_point": 35.44,
            "uvi": 6.4,
            "clouds": 0,
            "visibility": 10000,
            "wind_speed": 3.51,
            "wind_deg": 97,
            "wind_gust": 3.09,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623603600,
            "temp": 86.11,
            "feels_like": 82.78,
            "pressure": 1013,
            "humidity": 17,
            "dew_point": 36.59,
            "uvi": 9.1,
            "clouds": 0,
            "visibility": 10000,
            "wind_speed": 4.23,
            "wind_deg": 79,
            "wind_gust": 4.03,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623607200,
            "temp": 88.88,
            "feels_like": 85.05,
            "pressure": 1012,
            "humidity": 16,
            "dew_point": 37.65,
            "uvi": 11.1,
            "clouds": 0,
            "visibility": 10000,
            "wind_speed": 6.4,
            "wind_deg": 67,
            "wind_gust": 5.21,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623610800,
            "temp": 91.17,
            "feels_like": 87.08,
            "pressure": 1011,
            "humidity": 16,
            "dew_point": 39.67,
            "uvi": 11.85,
            "clouds": 0,
            "visibility": 10000,
            "wind_speed": 8.43,
            "wind_deg": 70,
            "wind_gust": 6.69,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623614400,
            "temp": 93.02,
            "feels_like": 88.83,
            "pressure": 1010,
            "humidity": 16,
            "dew_point": 40.06,
            "uvi": 11.12,
            "clouds": 0,
            "visibility": 10000,
            "wind_speed": 8.39,
            "wind_deg": 64,
            "wind_gust": 6.53,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623618000,
            "temp": 94.12,
            "feels_like": 89.67,
            "pressure": 1009,
            "humidity": 14,
            "dew_point": 38.64,
            "uvi": 9.12,
            "clouds": 0,
            "visibility": 10000,
            "wind_speed": 9.28,
            "wind_deg": 58,
            "wind_gust": 8.41,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623621600,
            "temp": 94.64,
            "feels_like": 90.18,
            "pressure": 1008,
            "humidity": 14,
            "dew_point": 37.81,
            "uvi": 6.53,
            "clouds": 0,
            "visibility": 10000,
            "wind_speed": 9.55,
            "wind_deg": 52,
            "wind_gust": 9.35,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623625200,
            "temp": 94.64,
            "feels_like": 90.28,
            "pressure": 1008,
            "humidity": 15,
            "dew_point": 38.88,
            "uvi": 3.82,
            "clouds": 1,
            "visibility": 10000,
            "wind_speed": 10.42,
            "wind_deg": 64,
            "wind_gust": 9.84,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623628800,
            "temp": 91.83,
            "feels_like": 88.27,
            "pressure": 1008,
            "humidity": 21,
            "dew_point": 46.31,
            "uvi": 1.75,
            "clouds": 16,
            "visibility": 10000,
            "wind_speed": 14.45,
            "wind_deg": 108,
            "wind_gust": 8.63,
            "weather": [
                {
                    "id": 801,
                    "main": "Clouds",
                    "description": "few clouds",
                    "icon": "02d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623632400,
            "temp": 88.93,
            "feels_like": 85.77,
            "pressure": 1009,
            "humidity": 24,
            "dew_point": 47.53,
            "uvi": 0.55,
            "clouds": 6,
            "visibility": 10000,
            "wind_speed": 15.41,
            "wind_deg": 135,
            "wind_gust": 13.96,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "pop": 0.16
        },
        {
            "dt": 1623636000,
            "temp": 76.6,
            "feels_like": 76.12,
            "pressure": 1013,
            "humidity": 46,
            "dew_point": 54.27,
            "uvi": 0,
            "clouds": 6,
            "visibility": 10000,
            "wind_speed": 14.79,
            "wind_deg": 180,
            "wind_gust": 23.04,
            "weather": [
                {
                    "id": 500,
                    "main": "Rain",
                    "description": "light rain",
                    "icon": "10d"
                }
            ],
            "pop": 0.35,
            "rain": {
                "1h": 0.36
            }
        },
        {
            "dt": 1623639600,
            "temp": 75.06,
            "feels_like": 74.57,
            "pressure": 1014,
            "humidity": 49,
            "dew_point": 54.19,
            "uvi": 0,
            "clouds": 6,
            "visibility": 10000,
            "wind_speed": 7.78,
            "wind_deg": 181,
            "wind_gust": 18.19,
            "weather": [
                {
                    "id": 500,
                    "main": "Rain",
                    "description": "light rain",
                    "icon": "10n"
                }
            ],
            "pop": 0.51,
            "rain": {
                "1h": 0.35
            }
        },
        {
            "dt": 1623643200,
            "temp": 75.09,
            "feels_like": 74.55,
            "pressure": 1014,
            "humidity": 48,
            "dew_point": 53.47,
            "uvi": 0,
            "clouds": 7,
            "visibility": 10000,
            "wind_speed": 6.69,
            "wind_deg": 181,
            "wind_gust": 13.67,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01n"
                }
            ],
            "pop": 0.51
        },
        {
            "dt": 1623646800,
            "temp": 75.31,
            "feels_like": 74.75,
            "pressure": 1014,
            "humidity": 47,
            "dew_point": 53.29,
            "uvi": 0,
            "clouds": 6,
            "visibility": 10000,
            "wind_speed": 4.76,
            "wind_deg": 181,
            "wind_gust": 7.78,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01n"
                }
            ],
            "pop": 0.47
        },
        {
            "dt": 1623650400,
            "temp": 74.48,
            "feels_like": 73.83,
            "pressure": 1014,
            "humidity": 47,
            "dew_point": 52.84,
            "uvi": 0,
            "clouds": 5,
            "visibility": 10000,
            "wind_speed": 4.94,
            "wind_deg": 177,
            "wind_gust": 8.28,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01n"
                }
            ],
            "pop": 0.32
        },
        {
            "dt": 1623654000,
            "temp": 73.45,
            "feels_like": 72.72,
            "pressure": 1014,
            "humidity": 47,
            "dew_point": 51.89,
            "uvi": 0,
            "clouds": 0,
            "visibility": 10000,
            "wind_speed": 4.54,
            "wind_deg": 194,
            "wind_gust": 7.36,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01n"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623657600,
            "temp": 72.7,
            "feels_like": 71.87,
            "pressure": 1014,
            "humidity": 47,
            "dew_point": 50.97,
            "uvi": 0,
            "clouds": 0,
            "visibility": 10000,
            "wind_speed": 4.21,
            "wind_deg": 216,
            "wind_gust": 5.88,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01n"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623661200,
            "temp": 72,
            "feels_like": 71.06,
            "pressure": 1014,
            "humidity": 46,
            "dew_point": 49.91,
            "uvi": 0,
            "clouds": 0,
            "visibility": 10000,
            "wind_speed": 2.33,
            "wind_deg": 264,
            "wind_gust": 3.33,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01n"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623664800,
            "temp": 71.15,
            "feels_like": 70.12,
            "pressure": 1014,
            "humidity": 46,
            "dew_point": 49.37,
            "uvi": 0,
            "clouds": 1,
            "visibility": 10000,
            "wind_speed": 2.15,
            "wind_deg": 261,
            "wind_gust": 2.66,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01n"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623668400,
            "temp": 70.36,
            "feels_like": 69.26,
            "pressure": 1014,
            "humidity": 46,
            "dew_point": 48.4,
            "uvi": 0,
            "clouds": 2,
            "visibility": 10000,
            "wind_speed": 1.74,
            "wind_deg": 228,
            "wind_gust": 1.7,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01n"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623672000,
            "temp": 69.94,
            "feels_like": 68.85,
            "pressure": 1015,
            "humidity": 47,
            "dew_point": 48.31,
            "uvi": 0,
            "clouds": 1,
            "visibility": 10000,
            "wind_speed": 0.81,
            "wind_deg": 6,
            "wind_gust": 2.3,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623675600,
            "temp": 72,
            "feels_like": 70.97,
            "pressure": 1016,
            "humidity": 44,
            "dew_point": 48.67,
            "uvi": 0.56,
            "clouds": 0,
            "visibility": 10000,
            "wind_speed": 1.28,
            "wind_deg": 317,
            "wind_gust": 3.18,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623679200,
            "temp": 75.22,
            "feels_like": 74.26,
            "pressure": 1016,
            "humidity": 39,
            "dew_point": 48.61,
            "uvi": 1.76,
            "clouds": 0,
            "visibility": 10000,
            "wind_speed": 1.16,
            "wind_deg": 91,
            "wind_gust": 1.03,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623682800,
            "temp": 78.96,
            "feels_like": 78.96,
            "pressure": 1015,
            "humidity": 34,
            "dew_point": 48.27,
            "uvi": 3.86,
            "clouds": 0,
            "visibility": 10000,
            "wind_speed": 3.31,
            "wind_deg": 131,
            "wind_gust": 3.33,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623686400,
            "temp": 83.53,
            "feels_like": 81.45,
            "pressure": 1014,
            "humidity": 28,
            "dew_point": 46.92,
            "uvi": 6.6,
            "clouds": 0,
            "visibility": 10000,
            "wind_speed": 4.56,
            "wind_deg": 144,
            "wind_gust": 4.97,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623690000,
            "temp": 88.54,
            "feels_like": 85.17,
            "pressure": 1013,
            "humidity": 22,
            "dew_point": 45.46,
            "uvi": 9.38,
            "clouds": 0,
            "visibility": 10000,
            "wind_speed": 4.79,
            "wind_deg": 144,
            "wind_gust": 5.14,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623693600,
            "temp": 93.15,
            "feels_like": 89.06,
            "pressure": 1011,
            "humidity": 17,
            "dew_point": 41.63,
            "uvi": 11.44,
            "clouds": 0,
            "visibility": 10000,
            "wind_speed": 5.95,
            "wind_deg": 134,
            "wind_gust": 5.73,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623697200,
            "temp": 96.91,
            "feels_like": 91.83,
            "pressure": 1010,
            "humidity": 9,
            "dew_point": 29.35,
            "uvi": 12.22,
            "clouds": 0,
            "visibility": 10000,
            "wind_speed": 6.96,
            "wind_deg": 123,
            "wind_gust": 6.96,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623700800,
            "temp": 98.33,
            "feels_like": 93,
            "pressure": 1009,
            "humidity": 8,
            "dew_point": 26.42,
            "uvi": 11.46,
            "clouds": 0,
            "visibility": 10000,
            "wind_speed": 7.45,
            "wind_deg": 117,
            "wind_gust": 7.14,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "pop": 0
        }
    ],
    "daily": [
        {
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
        },
        {
            "dt": 1623610800,
            "sunrise": 1623583887,
            "sunset": 1623637732,
            "moonrise": 1623593160,
            "moonset": 1623648480,
            "moon_phase": 0.1,
            "temp": {
                "day": 91.17,
                "min": 68.29,
                "max": 94.64,
                "night": 75.31,
                "eve": 88.93,
                "morn": 70.68
            },
            "feels_like": {
                "day": 87.08,
                "night": 74.75,
                "eve": 85.77,
                "morn": 68.77
            },
            "pressure": 1011,
            "humidity": 16,
            "dew_point": 39.67,
            "wind_speed": 15.41,
            "wind_deg": 135,
            "wind_gust": 23.04,
            "weather": [
                {
                    "id": 500,
                    "main": "Rain",
                    "description": "light rain",
                    "icon": "10d"
                }
            ],
            "clouds": 0,
            "pop": 0.51,
            "rain": 0.71,
            "uvi": 11.85
        },
        {
            "dt": 1623697200,
            "sunrise": 1623670286,
            "sunset": 1623724157,
            "moonrise": 1623683340,
            "moonset": 0,
            "moon_phase": 0.14,
            "temp": {
                "day": 96.91,
                "min": 69.94,
                "max": 99.32,
                "night": 77.5,
                "eve": 78.53,
                "morn": 72
            },
            "feels_like": {
                "day": 91.83,
                "night": 76.55,
                "eve": 77.86,
                "morn": 70.97
            },
            "pressure": 1010,
            "humidity": 9,
            "dew_point": 29.35,
            "wind_speed": 21.05,
            "wind_deg": 189,
            "wind_gust": 32.03,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "clouds": 0,
            "pop": 0.32,
            "uvi": 12.22
        },
        {
            "dt": 1623783600,
            "sunrise": 1623756687,
            "sunset": 1623810579,
            "moonrise": 1623773580,
            "moonset": 1623737100,
            "moon_phase": 0.17,
            "temp": {
                "day": 93.61,
                "min": 72.05,
                "max": 99.27,
                "night": 86.88,
                "eve": 97.38,
                "morn": 72.05
            },
            "feels_like": {
                "day": 89.11,
                "night": 83.44,
                "eve": 92.17,
                "morn": 70.47
            },
            "pressure": 1012,
            "humidity": 13,
            "dew_point": 35.91,
            "wind_speed": 10.6,
            "wind_deg": 67,
            "wind_gust": 13.53,
            "weather": [
                {
                    "id": 801,
                    "main": "Clouds",
                    "description": "few clouds",
                    "icon": "02d"
                }
            ],
            "clouds": 19,
            "pop": 0.12,
            "uvi": 12.19
        },
        {
            "dt": 1623870000,
            "sunrise": 1623843090,
            "sunset": 1623897001,
            "moonrise": 1623864000,
            "moonset": 1623825420,
            "moon_phase": 0.2,
            "temp": {
                "day": 98.67,
                "min": 75.09,
                "max": 101.19,
                "night": 82.6,
                "eve": 92.5,
                "morn": 75.09
            },
            "feels_like": {
                "day": 93.4,
                "night": 80.55,
                "eve": 88.41,
                "morn": 73.38
            },
            "pressure": 1010,
            "humidity": 9,
            "dew_point": 28.96,
            "wind_speed": 15.93,
            "wind_deg": 38,
            "wind_gust": 21.34,
            "weather": [
                {
                    "id": 801,
                    "main": "Clouds",
                    "description": "few clouds",
                    "icon": "02d"
                }
            ],
            "clouds": 19,
            "pop": 0.08,
            "uvi": 11.03
        },
        {
            "dt": 1623956400,
            "sunrise": 1623929495,
            "sunset": 1623983420,
            "moonrise": 1623954420,
            "moonset": 1623913620,
            "moon_phase": 0.25,
            "temp": {
                "day": 96.58,
                "min": 73.87,
                "max": 96.58,
                "night": 75.92,
                "eve": 76.21,
                "morn": 73.87
            },
            "feels_like": {
                "day": 91.71,
                "night": 75.15,
                "eve": 75.45,
                "morn": 72.32
            },
            "pressure": 1008,
            "humidity": 11,
            "dew_point": 33.66,
            "wind_speed": 13.71,
            "wind_deg": 159,
            "wind_gust": 23.98,
            "weather": [
                {
                    "id": 500,
                    "main": "Rain",
                    "description": "light rain",
                    "icon": "10d"
                }
            ],
            "clouds": 93,
            "pop": 0.4,
            "rain": 0.75,
            "uvi": 12
        },
        {
            "dt": 1624042800,
            "sunrise": 1624015901,
            "sunset": 1624069838,
            "moonrise": 1624044900,
            "moonset": 1624001640,
            "moon_phase": 0.27,
            "temp": {
                "day": 69.04,
                "min": 62.64,
                "max": 77.49,
                "night": 68.07,
                "eve": 70.79,
                "morn": 62.64
            },
            "feels_like": {
                "day": 67.77,
                "night": 67.73,
                "eve": 70.48,
                "morn": 61.52
            },
            "pressure": 1022,
            "humidity": 45,
            "dew_point": 46.92,
            "wind_speed": 10.89,
            "wind_deg": 349,
            "wind_gust": 13.69,
            "weather": [
                {
                    "id": 500,
                    "main": "Rain",
                    "description": "light rain",
                    "icon": "10d"
                }
            ],
            "clouds": 91,
            "pop": 0.84,
            "rain": 2.55,
            "uvi": 12
        },
        {
            "dt": 1624129200,
            "sunrise": 1624102309,
            "sunset": 1624156254,
            "moonrise": 1624135500,
            "moonset": 1624089600,
            "moon_phase": 0.31,
            "temp": {
                "day": 88.72,
                "min": 62.17,
                "max": 88.72,
                "night": 65.86,
                "eve": 72.34,
                "morn": 62.17
            },
            "feels_like": {
                "day": 85.15,
                "night": 65.53,
                "eve": 71.76,
                "morn": 61.47
            },
            "pressure": 1007,
            "humidity": 20,
            "dew_point": 42.93,
            "wind_speed": 21.14,
            "wind_deg": 283,
            "wind_gust": 22.5,
            "weather": [
                {
                    "id": 501,
                    "main": "Rain",
                    "description": "moderate rain",
                    "icon": "10d"
                }
            ],
            "clouds": 2,
            "pop": 0.76,
            "rain": 7.3,
            "uvi": 12
        }
    ],
    "alerts": [
        {
            "sender_name": "NWS Boulder (Northeastern Colorado)",
            "event": "Air Quality Alert",
            "start": 1623510600,
            "end": 1623535200,
            "description": "...OZONE ACTION DAY ALERT FROM 400 PM FRIDAY UNTIL 400 PM\nSATURDAY...\nThe Colorado Department of Public Health and Environment has\nissued the following...\nWHAT...Ozone Action Day Alert.\nWHERE...Douglas, Jefferson, Denver, western Arapahoe, western\nAdams, Broomfield, Boulder, Larimer, and Weld Counties\nWHEN...400 PM Friday June 11 to 400 PM Saturday June 12\nIMPACTS...Ozone Action Day Alert is now in effect for the Front\nRange Urban Corridor. Requests to limit driving of non-ZEV\nvehicles (i.e., gas or diesel) are now in effect until at least 4\np.m. Saturday, June 12, 2021.  Ozone concentrations are expected\nto reach the Unhealthy for Sensitive Groups category on Saturday.\nThe highest concentrations of ozone are most likely for locations\nin the southern and western portions of the Denver Metro area, and\nnorthward along the Front Range and lower foothills to include\nBoulder, Longmont, and Fort Collins. For areas included in this\nadvisory that are not expected to reach the Unhealthy for\nSensitive Groups (USG) air quality designation, we request that\nactivities, such as driving non-ZEV vehicles (i.e., gas or\ndiesel), be reduced to lessen the impacts on neighboring air\nquality. Additional air pollution in this region may directly\nworsen air quality or contribute to precursors which may also\nadversely affect air quality.  For Colorado air quality\nconditions, forecasts and advisories, visit:\nhttps://www.colorado.gov/airquality/colorado_summary.aspx\nHEALTH INFORMATION...Increasing likelihood of respiratory symptoms\nand breathing discomfort in active children and adults and people\nwith lung disease, such as asthma. Active children and adults, and\npeople with lung disease, such as asthma, should reduce prolonged\nor heavy outdoor exertion.",
            "tags": [
                "Air quality"
            ]
        }
    ]
}
      forecast = Forecast.new(data)
      expect(forecast.current_weather).to be_instance_of CurrentWeather
      expect(forecast.daily_weather).to be_an Array
    end
  end
end
