class Skill < ApplicationRecord
  has_many :users
  belongs_to :jobs
  validates :name, presence: true
end
