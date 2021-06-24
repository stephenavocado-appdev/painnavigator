class RemoveDobFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :dob
  end
end
