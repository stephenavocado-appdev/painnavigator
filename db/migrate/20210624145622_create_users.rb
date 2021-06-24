class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.string :dob
      t.integer :goals_count
      t.integer :courses_count
      t.integer :pain_diaries_count

      t.timestamps
    end
  end
end
