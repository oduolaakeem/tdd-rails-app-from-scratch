require "rails_helper"

describe Loan do
  it { should belong_to(:book) }
end

