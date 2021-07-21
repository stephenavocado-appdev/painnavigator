# == Schema Information
#
# Table name: medication_lists
#
#  id         :integer          not null, primary key
#  dosage     :string
#  frequency  :string
#  medication :string
#  unit       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class MedicationList < ApplicationRecord
end
