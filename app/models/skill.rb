class Skill < ApplicationRecord
  has_many :users, :jobs
  validates :name, presence: true
end
