class Book
  attr_reader :id, :destination, :total_books_found
  def initialize(location, results, books, forecast)
    @id = nil
    @destination = location
    @total_books_found = results
    @forecast = forecast
    @books = books
  end

  def books
    @books.map do |book|
      {
        isbn: book[:isbn],
        title: book[:title],
        publisher: book[:publisher]
      }
    end
  end

  def forecast
    {
      summary: @forecast.conditions,
      temperature: "#{@forecast.temperature} F"
    }
  end
end
