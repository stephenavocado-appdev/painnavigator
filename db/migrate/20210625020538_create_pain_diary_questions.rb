class CreatePainDiaryQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :pain_diary_questions do |t|
      t.string :category
      t.string :question
      t.string :input_type
      t.string :answer_options

      t.timestamps
    end
  end
end
