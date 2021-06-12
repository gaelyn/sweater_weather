require 'rails_helper'

RSpec.describe 'WeatherFacade' do
  it 'returns forecast objects' do
    location = MapFacade.get_lat_long('denver,co')
    response = ForecastFacade.get_city_forecast(lat,long)
  end
end
