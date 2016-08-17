class Dashboard::ApplicationsController < ApplicationController

  def index
    @applications = current_user.applications.all
  end

end
