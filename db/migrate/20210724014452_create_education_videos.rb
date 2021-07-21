class CreateEducationVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :education_videos do |t|
      t.string :name
      t.string :display_name
      t.string :video_ref
      t.string :seconds

      t.timestamps
    end
  end
end
