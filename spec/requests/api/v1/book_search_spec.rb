require 'rails_helper'

RSpec.describe 'Book Search' do
  describe 'Happy Path' do
    it 'can return books about given destination' do
      get '/api/v1/book-search', params: { location: "denver,co", quantity: 5 }
      books = JSON.parse(response.body, symbolize_names: true)

    end
  end
end
