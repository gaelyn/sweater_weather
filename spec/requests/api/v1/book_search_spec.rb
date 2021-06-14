require 'rails_helper'

RSpec.describe 'Book Search' do
  describe 'Happy Path' do
    it 'can return books about given destination' do
      get '/api/v1/book-search', params: { location: "denver,co", quantity: 5 }
      books = JSON.parse(response.body, symbolize_names: true)
      expect(response).to be_successful
      expect(response.status).to eq(200)
      expect(books).to be_a(Hash)

      expect(books[:data][:attributes].count).to eq(4)
      expect(books[:data][:attributes]).to have_key(:destination)
      expect(books[:data][:attributes]).to have_key(:forecast)
      expect(books[:data][:attributes]).to have_key(:total_books_found)
      expect(books[:data][:attributes]).to have_key(:books)

      expect(books[:data][:attributes][:forecast]).to be_a(Hash)
      expect(books[:data][:attributes][:forecast]).to have_key(:summary)
      expect(books[:data][:attributes][:forecast]).to have_key(:temperature)
      
      expect(books[:data][:attributes][:books]).to be_an(Array)
      expect(books[:data][:attributes][:books].first).to have_key(:isbn)
      expect(books[:data][:attributes][:books].first).to have_key(:title)
      expect(books[:data][:attributes][:books].first).to have_key(:publisher)
    end
  end
end
