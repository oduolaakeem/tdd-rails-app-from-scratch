FactoryGirl.define do
  factory :book do
    title 'Title'
    author 'Author'
  end

  factory :loan do
    name 'Loanee'
    book

    factory :overdue_loan do
      due_date { Date.yesterday }
    end
  end
end

