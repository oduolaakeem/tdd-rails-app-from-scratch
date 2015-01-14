class Book < ActiveRecord::Base
  has_many :loans

  def on_loan?
    loans.present?
  end
end
