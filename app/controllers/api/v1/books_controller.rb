class Api::V1::BooksController < ApplicationController
  def index
    if !params[:location] || !params[:quantity]
      render json: { errors: 'Location and quantity must be provided' }, status: :bad_request
    elsif params[:location].empty? || params[:quantity].empty? || params[:quantity].to_i <= 0
      render json: { errors: 'Location or quantity invalid' }, status: :bad_request
    else
      books = BookFacade.get_books_by_location(params[:location], params[:quantity])
      render json: BooksSerializer.new(books)
    end
  end
end
