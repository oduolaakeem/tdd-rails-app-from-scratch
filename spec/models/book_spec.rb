require "rails_helper"

describe Book do
  it { should have_many(:loans) }

  describe "#on_loan?" do
    context "when the book is on loan" do
      it "returns true" do
        book = create(:book)
        create(:loan, book: book)

        result = book.on_loan?

        expect(result).to be_truthy
      end
    end

    context "when the book is not on loan" do
      it "returns false" do
        book = build(:book)

        result = book.on_loan?

        expect(result).to be_falsey
      end
    end
  end
end
