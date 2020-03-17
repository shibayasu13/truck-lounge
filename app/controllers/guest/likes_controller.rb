class Guest::LikesController < ApplicationController
	 def create
	    review = Review.find(params[:review_id])
	    like = current_guest.likes.new(review_id: review.id)
	    like.save
	    redirect_to guest_review_path(review)
	end
	def destroy
	    review = Review.find(params[:review_id])
	    like = current_guest.likes.find_by(review_id: review.id)
	    like.destroy
	    redirect_to guest_review_path(review.id)
	end
end
