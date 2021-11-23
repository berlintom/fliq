class ParticipationsController < ApplicationController
  def new
    @match = Match.find(params[:match_id])
    @participation = Participation.new
  end
end
