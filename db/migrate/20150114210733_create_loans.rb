class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.string :name, null: false
      t.belongs_to :book, null: false

      t.timestamps null: false
    end
  end
end
