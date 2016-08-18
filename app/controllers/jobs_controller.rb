class JobsController < ApplicationController

  def index

    @jobs = Job.where(skill_id: params[:jobs][:skill_id]).near(params[:jobs][:address], '10')

    @hash = Gmaps4rails.build_markers(@jobs) do |job, marker|
      marker.lat job.latitude
      marker.lng job.longitude
      marker.infowindow render_to_string(partial: "/jobs/map_box", locals: { job: job })
    end
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
