class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.integer :user_id
      t.string :name
      t.string :status
      t.integer :lessons_count

      t.timestamps
    end
  end
end
