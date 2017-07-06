class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @pictures = @user.images
    @favorites = @user.favorites
    render :show
  end

  def user_params
    params.require(:user).permit(:username, :email, :avatar)
  end
end
