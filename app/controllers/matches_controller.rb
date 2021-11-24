class MatchesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :show]

  def index
    @matches = Match.all.order(created_at: :desc)
  end

  def show
    @match = Match.find(params[:id])
    @participations = @match.participations
    @userparticipants = []
    @participations.each do |participation|
      @userparticipants << participation.user
    end
  end

  def new
    @match = Match.new
  end

  def create
    @match = Match.new(params_match)
    @match.user = current_user
    if @match.save!
      @participation = Participation.new(status: "accepted", team: nil)
      @participation.match = @match
      @participation.user = current_user
      @participation.save
      redirect_to matches_path
    else
      render :new
    end
  end

  def mymatches
    @participations = Participation.where(user: current_user)
    @matches = Match.where(user: current_user)
  end

  private

  def params_match
    params.require(:match).permit(:capacity, :start_date, :end_date, :venue_id)
  end

end
