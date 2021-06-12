require 'rails_helper'

RSpec.describe 'WeatherFacade' do
  it 'returns forecast objects' do
    location = ??
    response = ForecastFacade.get_city_forecast(location)
  end
end
