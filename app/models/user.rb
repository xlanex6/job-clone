class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :jobs
  has_many :applications
  belongs_to :skill, required: false

  validates :user_type, inclusion: { in: ["Job Seeker","Employer"],
    message: "%{value} is not a valid user type" },
    presence: true,
    on: :update
  validates :first_name, presence: true,  on: :update
  validates :last_name, presence: true,  on: :update
  validates :skill, presence: true, on: :update
end
