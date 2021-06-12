require 'rails_helper'

RSpec.describe 'Forecast Index' do
  describe 'Happy Paths' do
    it 'can retrive weather for a city' do
      get '/api/v1/forecast', params: {location: "denver,co"}
      forecast = JSON.parse(response.body, symbolize_names: true)
      expect(response).to be_successful
    end
  end
end
