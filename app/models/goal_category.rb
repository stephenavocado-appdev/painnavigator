# == Schema Information
#
# Table name: goal_categories
#
#  id         :integer          not null, primary key
#  category   :string
#  icon       :string
#  unit       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class GoalCategory < ApplicationRecord
end
