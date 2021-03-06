class JobsController < ApplicationController

  def index

    if params[:jobs].nil?
      @jobs = Job.all
      @geo_job = Job.near('world', '100')

      @hash = Gmaps4rails.build_markers(@jobs) do |job, marker|
        marker.lat job.latitude
        marker.lng job.longitude
        marker.infowindow render_to_string(partial: "/jobs/map_box", locals: { job: job })
      end
    else
      if params[:jobs][:address].empty? && params[:jobs][:skill_id].empty?
        @jobs = Job.all
        @hash = Gmaps4rails.build_markers(@jobs) do |job, marker|
          marker.lat job.latitude
          marker.lng job.longitude
          marker.infowindow render_to_string(partial: "/jobs/map_box", locals: { job: job })
          end
      else
        if params[:jobs][:skill_id].empty?
          @jobs = Job.all.near(params[:jobs][:address], '100')
          @hash = Gmaps4rails.build_markers(@jobs) do |job, marker|
            marker.lat job.latitude
            marker.lng job.longitude
            marker.infowindow render_to_string(partial: "/jobs/map_box", locals: { job: job })
            end
        elsif params[:jobs][:address].empty?
          @jobs = Job.where(skill_id: params[:jobs][:skill_id])
          @geo_job = Job.near('world', '100')
          @hash = Gmaps4rails.build_markers(@jobs) do |job, marker|
            marker.lat job.latitude
            marker.lng job.longitude
            marker.infowindow render_to_string(partial: "/jobs/map_box", locals: { job: job })
            end
        else
          @jobs = Job.where(skill_id: params[:jobs][:skill_id]).near(params[:jobs][:address], '100')
          @hash = Gmaps4rails.build_markers(@jobs) do |job, marker|
            marker.lat job.latitude
            marker.lng job.longitude
            marker.infowindow render_to_string(partial: "/jobs/map_box", locals: { job: job })
            end
        end
      end
    end
  end

  def show
    @job = Job.find(params[:id])
    @job_geo = { lat: @job.latitude, lng: @job.longitude }
    @already_apply = false
      if current_user == nil
        @already_apply = false
      else
        @job.applications.each do |j|
       if current_user.id == j.user_id
          @already_apply = true
        else
          @already_apply = false
        end
      end
    end
  end
end
