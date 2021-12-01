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

    update_full(@participation)

    redirect_to mymatches_path
  end

  def decline
    @participation = Participation.find(params[:id])
    @participation.status = "declined"
    @participation.save
    update_full(@participation)
    redirect_to mymatches_path
  end

  def destroy
    @participation = Participation.find(params[:id])
    @participation.destroy
    if @participation.status == "accepted"
      change_full_to_false(@participation)
    end
    redirect_to mymatches_path
  end

  def change_full_to_false(participation)
    @match = participation.match
    @match.full = false
    @match.save
    set_teams_to_nil(@match)
  end

  def set_teams_to_nil(match)
    @participations = match.participations.where(status: "accepted")
    @participations.each do |participation|
      participation.team = nil
      participation.save
    end
  end

  def update_full(participation)
    @match = participation.match
    if @match.participations.where(status: "accepted").count < @match.capacity
      @match.full = false
      @match.save
    elsif @match.participations.where(status: "accepted").count == @match.capacity
      @match.full = true
      @match.save
      update_teams(@match)
    end
  end

  def update_teams(match)
    @participations = match.participations.where(status: "accepted")
    @orderedparticipations = @participations.sort_by(&:point_sum)
    if match.capacity == 4
      @orderedparticipations[0].team = 1
      @orderedparticipations[3].team = 1
      @orderedparticipations[1].team = 2
      @orderedparticipations[2].team = 2
    elsif match.capacity == 2
      @orderedparticipations[0].team = 1
      @orderedparticipations[1].team = 2
    end
    @participations.each(&:save)
  end

  private

  def params_participation
    params.require(:participation).permit(:status, :team)
  end
end
