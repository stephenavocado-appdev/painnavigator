class CreateNewUserSurveys < ActiveRecord::Migration[6.0]
  def change
    create_table :new_user_surveys do |t|
      t.integer :user_id
      t.string :q_1
      t.string :q_2
      t.string :q_3
      t.string :q_4
      t.string :q_5
      t.string :q_6
      t.string :q_7
      t.string :q_8
      t.string :q_9
      t.string :q_10
      t.string :q_11
      t.string :q_12
      t.string :q_13
      t.string :q_14
      t.string :q_15
      t.string :q_16
      t.string :q_17
      t.string :q_18
      t.string :q_19
      t.string :q_20
      t.string :q_21
      t.string :q_22
      t.string :q_23

      t.timestamps
    end
  end
end
