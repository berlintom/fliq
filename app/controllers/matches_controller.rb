class MatchesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :show]

  def index
    @search = params["search"]
      if @search.present?
        @address = @search["address"]
        @date = @search["date"]
        if
          # not finished!
          # if its empty, increase search radius by X km
          # elseif show results
          # else show all results
          @matches = Match.joins(:venue).where("address ILIKE ?", "%#{@address}%").where(date: @date).empty?
          @matches = Match.where(full: false).order(created_at: :desc)
          map
        elsif
          @matches = Match.joins(:venue).where("address ILIKE ?", "%#{@address}%").where(date: @date).order(created_at: :desc)
          map
        else
          @matches = Match.joins(:venue).where("address ILIKE ?", "%#{@address}%").where(date: @date)
          map
        end
      else
        @matches = Match.joins(:venue).where("address ILIKE ?", "%#{@address}%").where(date: @date)
        @matches = Match.where(full: false).order(created_at: :desc)
        map
      end
    end

    def map
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
    @score = Score.new
    @message = Message.new
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
      @participation = Participation.new(status: "accepted", team: nil)
      @participation.match = @match
      @participation.user = current_user
      @participation.save
      redirect_to matches_path, notice: '💯 Yeah - that worked! 🙌'
    else
      render :new, alert: 'Ooops 🙄 - that didnt work - try again'
    end
  end

  def destroy
    @match = Match.find(params[:id])
    @match.reviews.delete_all
    @match.participations.delete_all
    @match.delete
    redirect_to mymatches_path, notice: "Alright - match cancelled ✅"
  end

  def mymatches
    @participations = Participation.where(user: current_user)
    @pendings = []
    @booked = []
    @participations.each do |participation|
      if (participation.status == "pending") || (!participation.match.full? && participation.status == "accepted")
        @pendings << participation
      elsif participation.match.full && (participation.match.score == nil)
        @booked << participation
      end
    end
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
    if match.start_time.past? && (match.date.past? || match.date.today?) && (match.user == current_user) && (match.score == nil)
      @done = true
    end
  end

  private

  def params_match
    params.require(:match).permit(:capacity, :start_time, :end_time, :venue_id, :date, :comment)
  end
end
