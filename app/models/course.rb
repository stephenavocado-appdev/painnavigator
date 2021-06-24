# == Schema Information
#
# Table name: courses
#
#  id            :integer          not null, primary key
#  lessons_count :integer
#  name          :string
#  status        :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :integer
#
class Course < ApplicationRecord
  has_many(:lessons, { :class_name => "Lesson", :foreign_key => "course_id", :dependent => :nullify })
  belongs_to(:user, { :required => false, :class_name => "User", :foreign_key => "user_id", :counter_cache => true })
end
