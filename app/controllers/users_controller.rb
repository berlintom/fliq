class UsersController < ApplicationController
  # to be edited
  # def user_params
  #   params.require(:user).permit(:username, :homevenue, :photo)
  # end
  def show
    @user = User.find(params[:id])
  end
end
