# == Schema Information
#
# Table name: pain_diaries
#
#  id                    :integer          not null, primary key
#  activity_entry        :string
#  additional_notes      :string
#  coping_strategy       :string
#  coping_strategy_score :string
#  location_entry        :string
#  medication_entry      :string
#  mood_entry            :string
#  pain_duration         :string
#  pain_score            :string
#  pain_score_post       :string
#  social_entry          :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  user_id               :integer
#
class PainDiary < ApplicationRecord
  belongs_to(:user, { :required => false, :class_name => "User", :foreign_key => "user_id", :counter_cache => true })
end
