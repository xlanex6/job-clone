class Job < ApplicationRecord
  belongs_to :skill
  belongs_to :user
  has_many :applications
  validates :title, :content, :start_time, :end_time, :skill_id, :user_id, presence: true

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

end
