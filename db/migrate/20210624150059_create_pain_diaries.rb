class CreatePainDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :pain_diaries do |t|
      t.integer :user_id
      t.string :pain_score
      t.string :activity_entry
      t.string :mood_entry
      t.string :social_entry
      t.string :location_entry
      t.string :medication_entry
      t.string :coping_strategy
      t.string :coping_strategy_score
      t.string :additional_notes
      t.string :pain_duration
      t.string :pain_score_post

      t.timestamps
    end
  end
end
