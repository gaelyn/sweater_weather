require 'rails_helper'

RSpec.describe "Background Service" do
  describe "return a background image for city" do
    it 'can return image data for a given location', :vcr do
      results = BackgroundService.fetch_background_image("denver,co")
      expect(results).to be_a(Hash)
      expect(results).to have_key(:results)
    end
  end
end
