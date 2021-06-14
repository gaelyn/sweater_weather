require 'rails_helper'

RSpec.describe 'Book Facade' do
  it 'returns books queried by location' do
    books = BookFacade.get_books_by_location("denver,co", 5)
    expect(books).to be_an(Array)
    expect(books.count).to eq(5)
  end
end
