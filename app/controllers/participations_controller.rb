class ParticipationsController < ApplicationController
  def new
    @match = Match.find(params[:match_id])
    @participation = Participation.new
  end

  def create
    @participation = Participation.new(params_participation)
    @match = Match.find(params[:match_id])
    @participation.match = @match
    @participation.user = current_user
    @participation.save
    if @participation.save
      redirect_to
    else
      render :new
    end
  end

  private

  def params_participation
    params.require(:participation).permit(:status, :team)
  end
end
