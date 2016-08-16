class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :jobs, :applications
  has_one :skill
  validates :user_type, inclusion: { in: ["Job Seeker","Employer"],
    message: "%{value} is not a valid user type" },
    presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :skill_id, presence: true
end
