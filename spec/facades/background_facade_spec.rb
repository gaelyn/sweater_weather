require 'rails_helper'

RSpec.describe 'BackgroundFacade' do
  it 'returns an image object', :vcr do
    image = BackgroundFacade.get_city_image("denver,co")
    expect(image).to be_an(Image)
  end
end
