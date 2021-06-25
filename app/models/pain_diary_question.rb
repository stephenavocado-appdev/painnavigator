# == Schema Information
#
# Table name: pain_diary_questions
#
#  id             :integer          not null, primary key
#  answer_options :string
#  category       :string
#  input_type     :string
#  question       :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class PainDiaryQuestion < ApplicationRecord
end
