class ApplicationsController < ApplicationController

  def create
    @job = Job.find(params[:job_id])
    @application = Application.new
    @application.job_id = @job.id
    if user_signed_in?
      @application.user_id = current_user.id
      if @application.save
        redirect_to dashboard_jobs_path, notice: "Your application has been sent !"

      end
    else
      redirect_to user_session_path
    end
  end
end
