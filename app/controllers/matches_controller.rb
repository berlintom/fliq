class MatchesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :show]

  def index
    @matches = Match.all.order(created_at: :desc)
  end

  def show
    @match = Match.find(params[:id])
  end

end
