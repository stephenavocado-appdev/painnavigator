# == Schema Information
#
# Table name: medications
#
#  id         :integer          not null, primary key
#  dosage     :string
#  frequency  :string
#  medication :string
#  unit       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Medication < ApplicationRecord
end
