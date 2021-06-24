class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.string :name
      t.string :display_name
      t.string :category
      t.string :video_ref
      t.string :course
      t.string :seconds
      t.string :pre_video_action
      t.string :post_video_action
      t.integer :lessons_count

      t.timestamps
    end
  end
end
