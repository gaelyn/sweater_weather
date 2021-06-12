require 'rails_helper'

RSpec.describe 'Forecast Index' do
  # before :each do
  #
  # end

  describe 'Happy Paths' do
    it 'can retrive weather for a city', :vcr do
      get '/forecast', params: {location: "denver,co"}
      forecast = JSON.parse(response.body, symbolize_names: true)
    end
  end
end
