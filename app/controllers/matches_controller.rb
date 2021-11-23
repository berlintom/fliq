class MatchesController < ApplicationController
  def index
    @matches = Match.all.order(created_at: :desc)
  end

  def show
    @match = Match.find(params[:id])
  end

  def new
    @match = Match.new
  end

  def create
    @match = Match.new(params_match)
    @match.user = current_user
    @match.save
    if @match.save
      redirect_to matches_path
    else
      render :new
    end
  end

  private

 def params_match
  params.require(:match).permit(:capacity, :start_date, :end_date)
  end
  skip_before_action :authenticate_user!, only: [:home, :index, :show]


end
