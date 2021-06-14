require 'rails_helper'

RSpec.describe 'Book' do
  describe 'it encapsulates and returns books' do
    it 'returns a book objects with attributes' do
      current = {
                 :dt=>1623522198,
                 :sunrise=>1623497489,
                 :sunset=>1623551306,
                 :temp=>82.89,
                 :feels_like=>80.82,
                 :pressure=>1012,
                 :humidity=>26,
                 :dew_point=>44.53,
                 :uvi=>10.67,
                 :clouds=>0,
                 :visibility=>10000,
                 :wind_speed=>1.01,
                 :wind_deg=>334,
                 :wind_gust=>3,
                 :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}]
               }

      books = [
        {
          isbn: ["12345", "678910"],
          title: "Book About Denver",
          publisher: ["Some Publisher"]
        }
      ]

      current_weather = CurrentWeather.new(current)
      denver_books = Book.new("denver,co", 1, books, current_weather)
      expect(denver_books.destination).to eq("denver,co")
      expect(denver_books.total_books_found).to eq(1)
      expect(denver_books.books).to be_an(Array)
      expect(denver_books.forecast).to be_a(Hash)
      expect(denver_books.forecast[:summary]).to eq("clear sky")
      expect(denver_books.forecast[:temperature]).to eq("82.89 F")
    end
  end
end
