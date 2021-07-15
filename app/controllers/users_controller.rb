class UsersController < ApplicationController


def index
   @users = User.all
end

def show
   @user = User.find(params[:id])
end

def update
end

def edit
  @user = User.find(params[:id])
end

end

 private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
