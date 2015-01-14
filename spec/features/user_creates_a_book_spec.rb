require "rails_helper"

feature "User creates a book" do
  scenario "successfully" do
    visit new_book_path
    fill_in "book_title", with: "Out of Africa"
    fill_in "book_author", with: "Ben O"
    click_button 'Submit'

    expect(page).to have_content("Out of Africa")
  end
end
