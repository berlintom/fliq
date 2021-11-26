class UsersController < ApplicationController
  # to be edited
  # def user_params
  #   params.require(:user).permit(:username, :homevenue, :photo)
  # end
  def show
    @user = User.find(params[:id])
    lastparticipations(@user)
  end

  def lastparticipations(user)
    participations = user.participations
    @lastparticipations = []
    participations.each do |participation|
      if participation.outcome != "unplayed"
        @lastparticipations << participation
      end
    end
  end
end
