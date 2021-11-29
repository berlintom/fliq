class MatchesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :show]

  def index
    @matches = Match.where(full: false).order(created_at: :desc)
    @markers = @matches.map do |match|
      {
        lat: match.venue.latitude,
        lng: match.venue.longitude,
        info_window: render_to_string(partial: "info_window", locals: { venue: match.venue }),
        image_url: helpers.asset_url("map-icon.svg")
      }
    end
  end

  def show
    @match = Match.find(params[:id])
    @participations = @match.participations
    @userparticipants = []
    @participations.each do |participation|
      @userparticipants << participation.user
    end
    @current_userparticipation = @participations.find_by(user: current_user)
    assignteams(@participations)
    matchdone?(@match)
    @score = Score.new(match: @match)
  end

  def new
    @match = Match.new
  end

  def create
    @match = Match.new(params_match)
    @match.user = current_user

    venue = Venue.find_by(address: params[:match]["venue_id"])
    @match.venue = venue
    if @match.save
    puts "save success"
      @participation = Participation.new(status: "accepted", team: nil)
      @participation.match = @match
      @participation.user = current_user
      @participation.save
      redirect_to matches_path
    else
    puts "save failed"
      render :new
    end
  end

  def mymatches
    @participations = Participation.where(user: current_user)
    @matches = Match.where(user: current_user)
  end

  def assignteams(participations)
    @team1 = []
    @team2 = []
    participations.each do |participation|
      if participation.team == 1
        @team1 << participation
      else
        @team2 << participation
      end
    end
  end

  def matchdone?(match)
    @done = false
    if match.start_time.past? && match.user == current_user && match.score.nil?
      @done = true
    end
  end

  private

  def params_match
    params.require(:match).permit(:capacity, :start_time, :end_time, :venue_id, :date, :comment)
  end
end
