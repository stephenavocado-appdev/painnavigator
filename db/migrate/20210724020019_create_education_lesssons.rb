class CreateEducationLesssons < ActiveRecord::Migration[6.0]
  def change
    create_table :education_lesssons do |t|
      t.string :status
      t.string :name
      t.integer :video_id
      t.integer :user_id

      t.timestamps
    end
  end
end
