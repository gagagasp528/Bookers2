class UsersController < ApplicationController


def index
    @users = User.all
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
     @user = User.new(user_params)
    @user.user_id = current_user.id
    @user.save
    redirect_to user_path
  end

  def destroy
  end

private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end



end
