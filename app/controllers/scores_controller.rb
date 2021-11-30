class ScoresController < ApplicationController
  def create
    @score = Score.new(score_params)
    @match = Match.find(params[:match_id])
    @score.match = @match
    if @score.save
      redirect_to user_path(current_user), notice: 'Score submitted - Good match 🙌!'
      update_points(@match, @score)
    else
      render :new, alert: 'Ooops, I couldnt submit the score 🙄, please try again'
    end
  end

  def update_points(match, score)
    participations = match.participations
    if score.score_a > score.score_b
      participations.each do |participation|
        if participation.team == 1
          change_outcome_to_won(participation)
          increase_points(participation)
        else
          change_outcome_to_lost(participation)
        end
      end
    else
      participations.each do |participation|
        if participation.team == 2
          change_outcome_to_won(participation)
          increase_points(participation)
        else
          change_outcome_to_lost(participation)
        end
      end
    end
  end

  def change_outcome_to_won(participation)
    participation.outcome = "won"
    participation.save
  end

  def change_outcome_to_lost(participation)
    participation.outcome = "lost"
    participation.save
  end

  def increase_points(participation)
    user = participation.user.profile
    user.point_sum += 20
    user.save
  end

  private

  def score_params
    params.require(:score).permit(:score_a, :score_b)
  end
end
