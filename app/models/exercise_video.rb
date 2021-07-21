# == Schema Information
#
# Table name: exercise_videos
#
#  id           :integer          not null, primary key
#  display_name :string
#  name         :string
#  seconds      :string
#  video_ref    :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class ExerciseVideo < ApplicationRecord
    has_many(:exercise_lessons, { :class_name => "ExerciseLesson", :foreign_key => "video_id", :dependent => :destroy })
end
