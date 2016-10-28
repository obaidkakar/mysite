class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :St_name
      t.string :F_name
      t.string :Gender
      t.text :Address
      t.string :Cell
      t.string :Local
      t.string :CNIC

      t.timestamps
    end
  end
end
