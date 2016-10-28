class CreateDepartments < ActiveRecord::Migration[5.0]
  def change
    create_table :departments do |t|
      t.string :Dep_name
      t.string :Dep_location

      t.timestamps
    end
  end
end
