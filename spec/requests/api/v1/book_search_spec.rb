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

  describe 'Sad Path' do
    it 'returns an error if locaiton or quantity not provided' do
      get '/api/v1/book-search', params: { quantity: 5 }
      expect(response.body).to eq("{\"errors\":\"Location and quantity must be provided\"}")
      expect(response.status).to eq(400)
    end

    it 'returns an error if locaiton or quantity is empty string' do
      get '/api/v1/book-search', params: { location: "", quantity: 5 }
      expect(response.body).to eq("{\"errors\":\"Location or quantity invalid\"}")
      expect(response.status).to eq(400)
    end

    it 'returns an error if quantity is not an integer' do
      get '/api/v1/book-search', params: { location: "denver,co", quantity: "hello" }
      expect(response.body).to eq("{\"errors\":\"Location or quantity invalid\"}")
      expect(response.status).to eq(400)
    end
  end
end
