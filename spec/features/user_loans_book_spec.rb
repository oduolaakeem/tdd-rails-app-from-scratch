require "rails_helper"

feature "User loans a book"  do
  scenario "successfully" do
    book = create(:book)

    visit book_path(book)
    click_on "Loan"
    fill_in "loan_name", with: 'Jenny'
    click_button "Submit"

    expect(page).to have_content('Book loaned to Jenny')
  end

  scenario "and sees that it is loaned out" do
    loan = create(:loan)
    book = loan.book

    visit book_path(book)

    expect(page).to have_content('This book is on loan')
  end
end
