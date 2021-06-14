class BooksSerializer
  include FastJsonapi::ObjectSerializer
  attributes :destination, :total_books_found, :books
end
