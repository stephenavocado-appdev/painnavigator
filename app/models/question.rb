# == Schema Information
#
# Table name: questions
#
#  id             :integer          not null, primary key
#  answer_options :string
#  input_type     :string
#  question       :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  q_id           :string
#
class Question < ApplicationRecord
end
