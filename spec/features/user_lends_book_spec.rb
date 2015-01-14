require "rails_helper"

feature "User lends a book"  do
  scenario "successfully" do
    book = create(:book)

    visit book_path(book)
    click_on "Loan"
    fill_in "name", with: 'Jenny'
    click_button "Submit"

    expect(page).to have_content('Book loaned to Jenny')
  end
end
