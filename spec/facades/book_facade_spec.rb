require 'rails_helper'

RSpec.describe 'Book Facade' do
  it 'returns books queried by location' do
    books = BookFacade.get_books_by_location("denver,co", 5)
    expect(books.destination).to eq("denver,co")
    expect(books.total_books_found).to eq(606)
    expect(books.books).to be_an(Array)
    expect(books.books.first).to be_a(Hash)
    expect(books.books.count).to eq(5)
  end
end
