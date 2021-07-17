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
    @user = User.new(@User_params)
    if @User.save
      flash[:notice] = "Book was successfully created."
      redirect_to user_path(@User)
    else
      @Users = User.all
      render :index
  end
end
  def destroy
     user = User.find(params[:id])
  if user.destroy
     flash[:notice] = "Book was successfully destroyed."
     redirect_to users_path
   end
  end

private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end



end
