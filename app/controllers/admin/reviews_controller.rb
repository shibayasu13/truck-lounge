class Admin::ReviewsController < ApplicationController
	before_action :authenticate_admin!

  def show
  	@review = Review.find(params[:id])
  end

  def edit
  	@review = Review.find(params[:id])
  end

  def update
  	review = Review.find(params[:id])
  	review.update(review_params)
  	redirect_to admin_review_path(review.id)
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy
    redirect_to admin_lounge_path(lounge.id)
  end

  private
  def review_params
  	params.require(:review).permit(:lounge_id,:explanation,:review_image, :rate, :guest_id,:ganre_id, :title)
  end
end
