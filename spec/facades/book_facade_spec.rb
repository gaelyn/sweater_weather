require 'rails_helper'

RSpec.describe 'Book Facade' do
  it 'returns books queried by location', :vcr do
    books = BookFacade.get_books_by_location("denver,co", 5)
    expect(books.destination).to eq("denver,co")
    expect(books.total_books_found).to eq(606)
    expect(books.books).to be_an(Array)
    expect(books.books.first).to be_a(Hash)
    expect(books.books.count).to eq(5)
    expect(books.forecast).to be_a(Hash)
  end

  it 'can get weather for given location', :vcr do
    weather = BookFacade.get_weather("denver,co")
    expect(weather).to be_a(CurrentWeather)
  end
end
