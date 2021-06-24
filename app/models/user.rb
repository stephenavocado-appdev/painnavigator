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
end
