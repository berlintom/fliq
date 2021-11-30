class ReviewsController < ApplicationController
  before_action :set_restaurant

  def new
    @review = Review.new
  end

   def create
    @match = Match.new(review_params)
    @review.match = @restaurant
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


#   def create
#     @review = Review.new(review_params)
#     @review.match = @restaurant
#     # @review.restaurant_id = @restaurant.id
#     if @review.save
#       redirect_to match_path(@restaurant)
#     else
#       render :new
#     end
#   end

#   def destroy
#     raise
#     @review = Review.find(params[:id])
#     @restaurant = @review.restaurant
#     @review.destroy # JUST an sql query to delete a row in DB:  DELETE FROM REVIEWS WHERE ID = review.id
#     redirect_to restaurant_path(@restaurant)
#   end

#   private

#   def set_match
#     @match = Match.find(params[:match_id])
#   end

#   def review_params
#     params.require(:review).permit(:content)
#   end
# end
# end
