# == Schema Information
#
# Table name: videos
#
#  id                :integer          not null, primary key
#  category          :string
#  course            :string
#  display_name      :string
#  lessons_count     :integer
#  name              :string
#  post_video_action :string
#  pre_video_action  :string
#  seconds           :string
#  video_ref         :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class Video < ApplicationRecord
end
