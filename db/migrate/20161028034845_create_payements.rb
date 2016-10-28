class CreatePayements < ActiveRecord::Migration[5.0]
  def change
    create_table :payements do |t|
      t.integer :Ammount
      t.string :Discount
      t.integer :Total_fee
      t.integer :Remaining_fee
      t.date :Pay_date
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
