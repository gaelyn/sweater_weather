require 'rails_helper'

RSpec.describe "Book Service" do
  describe "return books about a city" do
    it 'can return book results for a given city', :vcr do
      results = BookService.fetch_books(["denver","co"], 5)
      expect(results).to be_a(Hash)
      expect(results[:docs].count).to eq(5)
    end
  end
end
