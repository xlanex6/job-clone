class Dashboard::JobsController < ApplicationController

  def index
    @jobs = current_user.jobs.all
    @applications = current_user.applications.all
  end

  def new
    @job = Job.new
  end

  def show
    @job = Job.find(params[:id])
  end

  def create
    @job = Job.new(job_params)
    @job.user_id = current_user.id
    if @job.save
      redirect_to dashboard_jobs_path, notice: "Your job has been successfully posted !"
    else
      render :new
    end
  end

private

  def job_params
    params.require(:job).permit(:title, :content, :address, :start_time, :end_time, :skill_id)
  end

end
