# == Schema Information
#
# Table name: lessons
#
#  id         :integer          not null, primary key
#  name       :string
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  course_id  :integer
#  user_id    :integer
#  video_id   :integer
#
class Lesson < ApplicationRecord
  belongs_to(:course, { :required => false, :class_name => "Course", :foreign_key => "course_id", :counter_cache => true })
  belongs_to(:video, { :required => false, :class_name => "Video", :foreign_key => "video_id", :counter_cache => true })
end
