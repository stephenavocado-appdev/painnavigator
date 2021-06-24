class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.string :name
      t.string :category
      t.integer :user_id
      t.string :user_goal
      t.string :user_result
      t.date :target_date
      t.string :incremental_steps
      t.string :reward
      t.string :status

      t.timestamps
    end
  end
end
