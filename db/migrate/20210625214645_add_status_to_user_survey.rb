class AddStatusToUserSurvey < ActiveRecord::Migration[6.0]
  def change
    add_column :new_user_surveys, :status, :string
  end
end
