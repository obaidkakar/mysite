class CreateInstructors < ActiveRecord::Migration[5.0]
  def change
    create_table :instructors do |t|
      t.string :Ins_name
      t.string :F_name
      t.string :Cell
      t.string :Email
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
