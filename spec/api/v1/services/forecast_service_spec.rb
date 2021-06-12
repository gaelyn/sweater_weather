require 'rails_helper'

RSpec.describe "Forecast Service" do
  describe "return forecast for city", :vcr do
    it 'can return forecast data for a given lat/long' do
      results = ForecastService.fetch_forecast(39.738453,-104.984853)
      expect(results).to be_a(Hash)
    end
  end
end
