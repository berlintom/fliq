class ParticipationsController < ApplicationController

  def create
    @participation = Participation.new(status: "pending", team: nil)
    @match = Match.find(params[:match_id])
    @participation.match = @match
    @participation.user = current_user
    @participation.save
    redirect_to mymatches_path
  end

  def accept
    @participation = Participation.find(params[:id])
    @participation.status = "accepted"
    @participation.save
    @match = @participation.match
    redirect_to mymatches_path
  end

  def decline
    @participation = Participation.find(params[:id])
    @participation.status = "declined"
    @participation.save
    redirect_to mymatches_path
  end

  private

  def params_participation
    params.require(:participation).permit(:status, :team)
  end
end
