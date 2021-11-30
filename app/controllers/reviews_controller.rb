class ReviewsController < ApplicationController
  before_action :set_match

  def new
    @review = Review.new
  end

   def create
    @review = Review.new(review_params)
    raise
    @review.match = @match
    if @review.save
      redirect_to match_path(@match)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @match = @review.match
    @review.destroy
    redirect_to match_path(@match)
  end

  private

  def set_match
    @match = Match.find(params[:match_id])
  end

   def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
