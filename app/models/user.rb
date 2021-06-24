# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  courses_count      :integer
#  dob                :string
#  email              :string
#  first_name         :string
#  goals_count        :integer
#  last_name          :string
#  pain_diaries_count :integer
#  password_digest    :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  has_secure_password

  has_many(:goals, { :class_name => "Goal", :foreign_key => "user_id", :dependent => :destroy })
  has_many(:courses, { :class_name => "Course", :foreign_key => "user_id", :dependent => :destroy })
  has_many(:pain_diaries, { :class_name => "PainDiary", :foreign_key => "user_id", :dependent => :destroy })
  has_one(:new_user_survey, { :class_name => "NewUserSurvey", :foreign_key => "user_id", :dependent => :destroy })
end
