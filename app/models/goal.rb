# == Schema Information
#
# Table name: goals
#
#  id                :integer          not null, primary key
#  category          :string
#  incremental_steps :string
#  name              :string
#  reward            :string
#  status            :string
#  target_date       :date
#  user_goal         :string
#  user_result       :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  user_id           :integer
#
class Goal < ApplicationRecord
  belongs_to(:user, { :required => false, :class_name => "User", :foreign_key => "user_id", :counter_cache => true })
end
