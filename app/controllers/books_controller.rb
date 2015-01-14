class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    Book.create(book_params)

    redirect_to books_path, notice: "Book created."
  end

  private

  def book_params
    params.require(:book).permit(:title, :author)
  end
end
