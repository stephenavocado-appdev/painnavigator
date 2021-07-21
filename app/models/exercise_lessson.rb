# == Schema Information
#
# Table name: exercise_lesssons
#
#  id         :integer          not null, primary key
#  name       :string
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  video_id   :integer
#
class ExerciseLessson < ApplicationRecord
    belongs_to(:exercise_video, { :required => false, :class_name => "ExerciseVideo", :foreign_key => "video_id"})
    belongs_to(:user, { :required => false, :class_name => "User", :foreign_key => "user_id"})
end
