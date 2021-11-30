class ReviewsController < ApplicationController
  before_action :set_match, except: [:destroy]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.match = @match
    @review.venue = @review.match.venue
    if @review.save
      redirect_to match_path(@match), notice: '🙌 Thanks for your review! 💯'
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @match = @review.match
    @review.destroy
    redirect_to match_path(@match), notice: '💯 Done - Review deleted!👌'
  end

  private

  def set_match
    @match = Match.find(params[:match_id])
  end

   def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
