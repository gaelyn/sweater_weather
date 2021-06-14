class Book
  attr_reader :id, :destination, :total_books_found
  def initialize(location, results, books)
    @id = nil
    @destination = location
    @total_books_found = results
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
end
