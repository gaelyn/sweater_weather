require 'rails_helper'

RSpec.describe 'Book Facade' do
  it 'returns books queried by location' do
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
    current_weather = CurrentWeather.new(current)
    books = BookFacade.get_books_by_location("denver,co", 5, current_weather)
    expect(books.destination).to eq("denver,co")
    expect(books.total_books_found).to eq(606)
    expect(books.books).to be_an(Array)
    expect(books.books.first).to be_a(Hash)
    expect(books.books.count).to eq(5)
    expect(books.forecast).to be_a(Hash)
  end
end
