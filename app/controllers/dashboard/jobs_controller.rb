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

    @job = current_user.Job.new(job_params)
    if @job.save
      render :index
    else
      render 'new'
    end
  end


  private

  def job_params
    params.require(:job).permit(:title, :content, :address, :start_time, :end_time, :user_id)
  end



end
