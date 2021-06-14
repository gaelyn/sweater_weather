require 'rails_helper'

RSpec.describe 'Book' do
  describe 'it encapsulates and returns books' do
    it 'returns a book objects with attributes', :vcr do
      books = [
        {
          isbn: ["12345", "678910"],
          title: "Book About Denver",
          publisher: ["Some Publisher"]
        }
      ]

      current_weather = BookFacade.get_weather("denver,co")
      denver_books = Book.new("denver,co", 1, books, current_weather)
      expect(denver_books.destination).to eq("denver,co")
      expect(denver_books.total_books_found).to eq(1)
      expect(denver_books.books).to be_an(Array)
      expect(denver_books.forecast).to be_a(Hash)
      expect(denver_books.forecast[:summary]).to eq("clear sky")
      expect(denver_books.forecast[:temperature]).to eq("87.76 F")
    end
  end
end
