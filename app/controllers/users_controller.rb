class UsersController < ApplicationController
  def index
    @users = User.all
    authorize! :read, User
  end

  def update_user_role
    User.find(params[:id]).update(role: params[:user][:role])
    redirect_back fallback_location: users_path, notice: "User Updated!"
  end
end
