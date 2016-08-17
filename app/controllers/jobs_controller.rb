class JobsController < ApplicationController

  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
    @job_geo = { lat: @job.latitude, lng: @job.longitude }
    @already_apply = false
    @job.applications.each do |j|
      if current_user.id == j.user_id
        @already_apply = true
      end
    end
  end

end
