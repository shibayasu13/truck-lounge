class Guest::ReviewsController < ApplicationController
  def index
    @lounge = Lounge.where(params[:id])
    @reviews = Review.all
  end

  def show
  	@review = Review.find(params[:id])
    @guest = Guest.find_by(params[:id]).reviews
  end

  def new
  	@review = Review.new
    current_guest_id = current_guest.id
  end

  def create
  	@review = Review.new(review_params)
    @review.guest_id = current_guest.id
  	@review.save!
  	redirect_to guest_lounge_path(@review.lounge.id)
  end

  def edit
  	@review = Review.find(params[:id])
  end

  def update
  	review = Review.find(params[:id])
  	review.update(review_params)
  	redirect_to guest_review_path(review.id)
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy
    redirect_to guest_lounge_path(lounge.id)
  end

  private
  def review_params
  	params.require(:review).permit(:lounge_id,:explanation,:review_image, :rate, :guest_id,:ganre_id, :title, :guest_id)
  end
end
