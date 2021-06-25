# == Schema Information
#
# Table name: new_user_surveys
#
#  id         :integer          not null, primary key
#  q_1        :string
#  q_10       :string
#  q_11       :string
#  q_12       :string
#  q_13       :string
#  q_14       :string
#  q_15       :string
#  q_16       :string
#  q_17       :string
#  q_18       :string
#  q_19       :string
#  q_2        :string
#  q_20       :string
#  q_21       :string
#  q_22       :string
#  q_23       :string
#  q_3        :string
#  q_4        :string
#  q_5        :string
#  q_6        :string
#  q_7        :string
#  q_8        :string
#  q_9        :string
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
class NewUserSurvey < ApplicationRecord
  belongs_to(:user, { :required => false, :class_name => "User", :foreign_key => "user_id" })
end
