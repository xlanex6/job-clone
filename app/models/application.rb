class Application < ApplicationRecord
  belongs_to :job
  belongs_to :user
  validates :job_id, :user_id, presence: true
end
