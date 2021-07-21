# == Schema Information
#
# Table name: education_videos
#
#  id           :integer          not null, primary key
#  display_name :string
#  name         :string
#  seconds      :string
#  video_ref    :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class EducationVideo < ApplicationRecord
    has_many(:education_lessons, { :class_name => "EducationLesson", :foreign_key => "video_id", :dependent => :destroy })
end
