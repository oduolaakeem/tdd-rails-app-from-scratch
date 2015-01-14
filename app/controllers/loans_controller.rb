class LoansController < ApplicationController
  def new
    @book = find_book
    @loan = Loan.new
  end

  def create
    book = find_book
    loan = book.loans.create(loan_params)

    redirect_to books_path, notice: "Book loaned to #{loan.name}"
  end

  private

  def loan_params
    params.require(:loan).permit(:name)
  end

  def find_book
    Book.find(params[:book_id])
  end
end
