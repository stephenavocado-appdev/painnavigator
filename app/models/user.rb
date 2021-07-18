# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  courses_count      :integer
#  date_of_birth      :datetime
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
  before_save {self.email = email.downcase}
  validates :first_name, presence: true, length: {maximum: 25}
  validates :last_name, presence: true, length: {maximum: 25}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password

  has_many(:goals, { :class_name => "Goal", :foreign_key => "user_id", :dependent => :destroy })
  has_many(:courses, { :class_name => "Course", :foreign_key => "user_id", :dependent => :destroy })
  has_many(:pain_diaries, { :class_name => "PainDiary", :foreign_key => "user_id", :dependent => :destroy })
  has_one(:new_user_survey, { :class_name => "NewUserSurvey", :foreign_key => "user_id", :dependent => :destroy })
  has_many(:lessons, { :class_name => "Lesson", :foreign_key => "user_id", :dependent => :destroy })

  def todays_goals
    return self.goals.where({ :target_date => Date.current, :status => "Created" })
    #self method is implied if there is an instance method or column for user called goals
  end

  def next_lessons
    return self.lessons.where({ :status => "In Progress" })
  end

  def upcoming_lessons
    return self.lessons.where({ :status => "Enrolled" })
  end


end
