class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.integer :course_id
      t.string :status
      t.string :name
      t.integer :video_id
      t.integer :user_id

      t.timestamps
    end
  end
end
