require 'rails_helper'

RSpec.describe "Forecast Service" do
  describe "return forecast for city" do
    it 'can return forecast data for a given lat/long', :vcr do
      results = ForecastService.fetch_forecast(39.738453,-104.984853)
      expect(results).to be_a(Hash)
      expect(results).to have_key(:current)
      expect(results).to have_key(:hourly)
      expect(results).to have_key(:daily)
    end
  end
end
