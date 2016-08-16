class Job < ApplicationRecord
  belongs_to :skill
  belongs_to :user
  has_many :applications
  validates :title, :content, :start_time, :end_time, :address, :skill_id, :user_id, presence: true

end
