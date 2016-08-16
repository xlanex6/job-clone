class Dashboard::JobsController < ApplicationController

  def index
    @jobs = current_user.jobs.all
  end

  def show

  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    @job.user_id = current_user.id
    if @job.save
      redirect_to jobs_path
    else
      redirect_to jobs_path
    end
  end


  private

  def job_params
    params.require(:job).permit(:title, :content, :address, :start_time, :end_time, :skill_id)
  end



end
