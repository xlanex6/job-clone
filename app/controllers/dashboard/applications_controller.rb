class Dashboard::ApplicationsController < ApplicationController

  def index
    @applications = current_user.applications_own_jobs
  end

  def update
    @application = Application.find(params[:id])
    if params[:status] == 'accepted'
      @application.accepted_date = DateTime.now
      @application.save
      redirect_to :back
    elsif params[:status] == 'refused'
      @application.refused_date = DateTime.now
      @application.save
      redirect_to :back
    end
  end


end
