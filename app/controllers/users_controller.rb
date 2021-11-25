class UsersController < ApplicationController
  # to be edited
  # def user_params
  #   params.require(:user).permit(:username, :homevenue, :photo)
  # end
  def show
    @user = User.find(params[:id])
    @participations = @user.participations.where(status: "accepted")
    @matches = []
    @participations.each do |participation|
      @matches << participation.match
    end

    @lastmatches = []

    @matches.each do |match|
      if match.end_date.past?
        @lastmatches << match
      end
    end
  end
end
