class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :question
      t.string :input_type
      t.string :answer_options

      t.timestamps
    end
  end
end
