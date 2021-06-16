require 'rails_helper'

RSpec.describe 'Image' do
  describe 'encapsulates and returns image' do
    it 'shows image attributes from' do
      json = File.read('spec/fixtures/image.json')
      parsed = JSON.parse(json, symbolize_names: true)
      denver = parsed[:results].first
      denver[:location] = "denver,co"

      image = Image.new(denver)
      expect(image.location).to eq("denver,co")
      expect(image.image_url).to eq("https://images.unsplash.com/photo-1619856699906-09e1f58c98b1?crop=entropy&cs=srgb&fm=jpg&ixid=MnwyMzkyNjF8MHwxfHNlYXJjaHwxfHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MjM3OTM3MzU&ixlib=rb-1.2.1&q=85")
      expect(image.credit).to be_a(Hash)
      expect(image.credit[:source]).to eq("unsplash.com")
      expect(image.credit[:author]).to eq("Ryan De Hamer")
      expect(image.credit[:author_profile]).to eq("https://unsplash.com/@rdehamer")
    end
  end
end
