# == Schema Information
#
# Table name: education_lesssons
#
#  id         :integer          not null, primary key
#  name       :string
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  video_id   :integer
#
class EducationLessson < ApplicationRecord
    belongs_to(:education_video, { :required => false, :class_name => "EducationVideo", :foreign_key => "video_id"})
    belongs_to(:user, { :required => false, :class_name => "User", :foreign_key => "user_id"})
end
