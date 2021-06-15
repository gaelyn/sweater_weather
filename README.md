## About
This is a fictional backend for building an application to plan road trips. This app will allow users to see the current weather as well as the forecasted weather at the destination.

This project utilizes service-oriented architecture. The front-end will communicate with the back-end through an API. The goal of this project was to expose that API in a way that satisfies the front-end team’s requirements.

## Table of contents
[**About**](#about) |
[**Versions**](#versions) |
[**Setup**](#setup) |
[**Endpoints**](#endpoints) |
[**Examples**](#examples) |
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
  4. Run command `rails s` and navigate to http://localhost:3000 to consume API endpoints below

If you are running the API via [Heroku](), simply consume endpoints below.

## Endpoints
The following are all API endpoints. Note, some endpoints have optional or required query parameters.
- All endpoints run off base connector http://localhost:3000 on local or https://.herokuapp.com/ on Heroku

### Forecast:

| Method   | URL                                      | Description                              |
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

### Road Trips:

| Method   | URL                                      | Description                              |
| -------- | ---------------------------------------- | ---------------------------------------- |
| `POST`   | `/api/v1/road_trip`                      |  Responds with road trip data including travel time and weather for destination at the eta |


## Examples

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
```

## Running the Tests

Run all tests in application with `bundle exec rspec`. When test is complete, run `open coverage` to see where tests are being run and where they are not.


## Deployment



## Built Using
- Ruby on Rails

## Developers
* Gaelyn Cooper [GitHub](https://github.com/gaelyn) • [LinkedIn](https://www.linkedin.com/in/gaelyn-cooper/)

<!-- ![Screenshot](lib/images/ADD-A-SCREENSHOT) -->

## Acknowledgments

OpenWeatherAPI MapQuestAPI
