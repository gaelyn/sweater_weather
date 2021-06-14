require 'rails_helper'

RSpec.describe 'Book' do
  describe 'it encapsulates and returns books' do
    it 'returns a book objects with attributes' do
      books = [
        {
          isbn: ["12345", "678910"],
          title: "Book About Denver",
          publisher: ["Some Publisher"]
        }
      ]

      denver_books = Book.new("denver,co", 1, books)
      expect(denver_books.destination).to eq("denver,co")
      expect(denver_books.total_books_found).to eq(1)
      expect(denver_books.books).to be_an(Array)
    end
  end
end
