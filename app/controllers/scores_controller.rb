class ScoresController < ApplicationController
  def create
    @score = Score.new(score_params)
    @match = Match.find(params[:match_id])
    @score.match = @match
    if @score.save
      redirect_to user_path(current_user)
      update_points(@match, @score)
    else
      render :new
    end
  end

  def update_points(match, score)
    participations = match.participations
    if score.score_a > score.score_b
      participations.where(team: 1).each do |participation|
        user = participation.user.profile
        user.point_sum += 20
        user.save
      end
    else
      participations.where(team: 2).each do |participation|
        user = participation.user.profile
        user.point_sum += 20
        user.save
      end
    end
  end

  private

  def score_params
    params.require(:score).permit(:score_a, :score_b)
  end
end
