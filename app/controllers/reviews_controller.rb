class ReviewsController < ApplicationController
 before_action :set_restaurant, only: [ :show, :edit ]
  def new
    @reviews = Review.new
  end

  def create
    review = Review.new(review_params)
    review.save
    redirect_to reviews_path
  end

  private
    
  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
