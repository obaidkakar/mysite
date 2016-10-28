class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :Course_name
      t.string :CS_duration

      t.timestamps
    end
  end
end
