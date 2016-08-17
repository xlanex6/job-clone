class Dashboard::UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to dashboard_user_path
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :phone, :title, :bio, :avatar, :cv, :company, :website, :user_type, :skill_id)
  end


end