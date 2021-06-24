class CreateGoalCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :goal_categories do |t|
      t.string :category
      t.string :unit
      t.string :icon

      t.timestamps
    end
  end
end
