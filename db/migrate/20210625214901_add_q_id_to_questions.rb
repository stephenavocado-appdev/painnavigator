class AddQIdToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :q_id, :string
  end
end
