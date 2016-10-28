class CreateStHasDeps < ActiveRecord::Migration[5.0]
  def change
    create_table :st_has_deps do |t|
      t.references :department, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
