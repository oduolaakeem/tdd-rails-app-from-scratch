class LoansController < ApplicationController
  def new
    @loan = Loan.new
  end
end
