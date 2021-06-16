## About
![Image](https://media.giphy.com/media/26u6dryuZH98z5KuY/giphy.gif)  
[via GIPHY](https://giphy.com/embed/26u6dryuZH98z5KuY)

Sweater Weather is a fictional backend for an application to plan road trips. This app will allow users to see the current weather as well as the forecasted weather at the destination.  
The front-end will communicate with the back-end through an API. The goal of this project is to build and expose that API in a way that satisfies the front-end team’s requirements using service oriented architecture.

## Table of contents
[**About**](#about) |
[**Getting Started**](#getting-started) |
[**Versions**](#versions) |
[**Setup**](#setup) |
[**Endpoints**](#endpoints) |
[**Examples**](#example-responses) |
[**Tests**](#running-the-tests) |
[**Deployment**](#deployment) |
[**Developers**](#developers) |
[**Acknowledgements**](#acknowledgements)

## Getting Started

## Versions
* Ruby 2.5.3
* Rails 5.2.6

## Setup
To run locally, follow the steps below:
  1. Fork and clone this repo
  2. Install gem packages by running `bundle`
  3. Setup the database: `rails db:(drop,create,migrate,seed)` or `rails db:setup`
  4. You will need API keys from [OpenWeatherAPI](), [MapQuestAPI](), and [UnsplashAPI]().
  5. Run `bundle exec figaro install` and add your keys to the `config/application.yml` file and name them `WEATHER_KEY`,`MAP_KEY`, and `IMAGE_KEY` accordingly.
  6. Run command `rails s` and navigate to http://localhost:3000 to consume API endpoints below.

  NOTE: If you are running the API via [Heroku](https://sweater-weather-2102.herokuapp.com), simply consume endpoints below.

## Endpoints
The following are all API endpoints. Note, some endpoints have optional or required query parameters.
- All endpoints run off base connector http://localhost:3000 on local or https://sweater-weather-2102.herokuapp.com on Heroku.
- Example responses can be seen after endpoints.

### Forecast:

| Method   | URI                                      | Description                              |
| -------- | ---------------------------------------- | ---------------------------------------- |
| `GET`    | `/api/v1/forecast?location=<location>`   | Retrieves current, daily, and hourly forecast for location |

### Background Image:

| Method   | URL                                      | Description                              |
| -------- | ---------------------------------------- | ---------------------------------------- |
| `GET`    | `/api/v1/backgrounds?location=<location>`| Retrieves appropriate background image for city|

### Users:

| Method   | URL                                      | Description                              |
| -------- | ---------------------------------------- | ---------------------------------------- |
| `POST`   | `/api/v1/users`                          |  Creates user in DB and returns user email and api_key  |
| `POST`   | `/api/v1/sessions`                       |  Creates a session and returns user email and api_key |

Request to create a user:
```
headers:
Content-Type: application/json
Accept: application/json

body:
{
  "email": "whatever@example.com",
  "password": "password",
  "password_confirmation": "password"
}
```

Request to login a user:
```
headers:
Content-Type: application/json
Accept: application/json

body:
{
  "email": "whatever@example.com",
  "password": "password"
}
```

### Road Trips:

| Method   | URL                                      | Description                              |
| -------- | ---------------------------------------- | ---------------------------------------- |
| `POST`   | `/api/v1/road_trip`                      |  Responds with road trip data including travel time and weather for destination at the eta |

Request:
```
headers:
Content-Type: application/json
Accept: application/json

body:
{
  "origin": "Denver,CO",
  "destination": "Pueblo,CO",
  "api_key": "jgn983hy48thw9begh98h4539h4"
}

```


## Example Responses

### Forecast for Denver, Colorado:

```
{
    "data": {
        "id": null,
        "type": "forecast",
        "attributes": {
            "current_weather": {
                "datetime": "2021-06-12T22:07:37.000-05:00",
                "sunrise": "2021-06-12T06:31:29.000-05:00",
                "sunset": "2021-06-12T21:28:26.000-05:00",
                "temperature": 75.94,
                "feels_like": 75.16,
                "humidity": 41,
                "uvi": 0,
                "visibility": 10000,
                "conditions": "few clouds",
                "icon": "02n"
            },
            "daily_weather": [
                {
                    "date": "2021-06-12",
                    "sunrise": "2021-06-12T06:31:29.000-05:00",
                    "sunset": "2021-06-12T21:28:26.000-05:00",
                    "max_temp": 92.84,
                    "min_temp": 61.84,
                    "conditions": "clear sky",
                    "icon": "01d"
                },
                {
                    "date": "2021-06-13",
                    "sunrise": "2021-06-13T06:31:27.000-05:00",
                    "sunset": "2021-06-13T21:28:52.000-05:00",
                    "max_temp": 94.6,
                    "min_temp": 67.75,
                    "conditions": "clear sky",
                    "icon": "01d"
                },
                {
                    "date": "2021-06-14",
                    "sunrise": "2021-06-14T06:31:26.000-05:00",
                    "sunset": "2021-06-14T21:29:16.000-05:00",
                    "max_temp": 99.03,
                    "min_temp": 70.83,
                    "conditions": "clear sky",
                    "icon": "01d"
                },
                {
                    "date": "2021-06-15",
                    "sunrise": "2021-06-15T06:31:27.000-05:00",
                    "sunset": "2021-06-15T21:29:39.000-05:00",
                    "max_temp": 99.5,
                    "min_temp": 71.87,
                    "conditions": "clear sky",
                    "icon": "01d"
                },
                {
                    "date": "2021-06-16",
                    "sunrise": "2021-06-16T06:31:30.000-05:00",
                    "sunset": "2021-06-16T21:30:01.000-05:00",
                    "max_temp": 101.7,
                    "min_temp": 75.27,
                    "conditions": "few clouds",
                    "icon": "02d"
                }
            ],
            "hourly_weather": [
                {
                    "time": "22:00:00",
                    "temperature": 75.94,
                    "conditions": "Clouds",
                    "icon": "02n"
                },
                {
                    "time": "23:00:00",
                    "temperature": 76.23,
                    "conditions": "Clouds",
                    "icon": "02n"
                },
                {
                    "time": "00:00:00",
                    "temperature": 76.23,
                    "conditions": "Clouds",
                    "icon": "02n"
                },
                {
                    "time": "01:00:00",
                    "temperature": 75.38,
                    "conditions": "Clear",
                    "icon": "01n"
                },
                {
                    "time": "02:00:00",
                    "temperature": 74.01,
                    "conditions": "Clear",
                    "icon": "01n"
                },
                {
                    "time": "03:00:00",
                    "temperature": 71.82,
                    "conditions": "Clear",
                    "icon": "01n"
                },
                {
                    "time": "04:00:00",
                    "temperature": 70.39,
                    "conditions": "Clear",
                    "icon": "01n"
                },
                {
                    "time": "05:00:00",
                    "temperature": 69.57,
                    "conditions": "Clear",
                    "icon": "01n"
                }
            ]
        }
    }
}
```

### Background Image for Denver, CO

```
{
    "data": {
        "id": null,
        "type": "image",
        "attributes": {
            "location": "denver,co",
            "image_url": "https://images.unsplash.com/photo-1619856699906-09e1f58c98b1?crop=entropy&cs=srgb&fm=jpg&ixid=MnwyMzkyNjF8MHwxfHNlYXJjaHwxfHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MjM2MDA5MDM&ixlib=rb-1.2.1&q=85",
            "credit": {
                "source": "unsplash.com",
                "author": "Ryan De Hamer",
                "author_profile": "https://unsplash.com/@rdehamer"
            }
        }
    }
}
```

### Create a User or User login

```
{
    "data": {
        "id": "1",
        "type": "user",
        "attributes": {
            "email": "whatever@example.com",
            "api_key": "6Qyioc4xNsnraU2xQG4AfRgY"
        }
    }
}
```

### Create a Road Trip
```
{
    "data": {
        "id": null,
        "type": "roadtrip",
        "attributes": {
            "start_city": "Denver,CO",
            "end_city": "Pueblo,CO",
            "travel_time": "01 hour(s) and 44 minutes",
            "weather_at_eta": {
                "temperature": 97.16,
                "conditions": "Clear"
            }
        }
    }
}
```

## Running the Tests

Run all tests in application with `bundle exec rspec`. When test is complete, run `open coverage` to see where tests are being run and where they are not.


## Deployment
- This project was deployed with [Heroku](https://sweater-weather-2102.herokuapp.com)



## Built Using
- Ruby on Rails

## Notable Gems Used
- Bcrypt
- VCR
- Faraday
- fast_jsonapi

## Developers
* Gaelyn Cooper [GitHub](https://github.com/gaelyn) • [LinkedIn](https://www.linkedin.com/in/gaelyn-cooper/)

<!-- ![Screenshot](lib/images/ADD-A-SCREENSHOT) -->

## Acknowledgments

This project utilized the following external APIs: [OpenWeather One Call API](https://openweathermap.org/api/one-call-api), [MapQuest API](https://developer.mapquest.com/documentation/geocoding-api/), [UnplashAPI](https://unsplash.com/documentation).
- The photographer credit requirements for Unsplash can be found [here](https://help.unsplash.com/en/articles/2612337-do-i-have-to-give-credit-to-a-photographer-when-i-use-their-photo)
