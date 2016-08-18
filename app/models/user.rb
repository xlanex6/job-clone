class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :photo, PhotoUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:facebook]

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

  def self.find_for_facebook_oauth(auth)
    user_params = auth.to_h.slice(:provider, :uid)
    user_params.merge! auth.info.slice(:email, :first_name, :last_name)
    user_params[:facebook_picture_url] = auth.info.image
    user_params[:token] = auth.credentials.token
    user_params[:token_expiry] = Time.at(auth.credentials.expires_at)

    user = User.where(provider: auth.provider, uid: auth.uid).first
    user ||= User.where(email: auth.info.email).first # User did a regular sign up in the past.
    if user
      user.update(user_params)
    else
      user = User.new(user_params)
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.save
    end

    return user
  end

  def applications_own_jobs
    jobs_application = []
    self.jobs.each do |job|
      jobs_application << job.applications
    end
    jobs_application.flatten
  end


end
