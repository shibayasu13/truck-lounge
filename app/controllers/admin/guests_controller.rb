class Admin::GuestsController < ApplicationController
	def index
		@guests = Guest.all
	end

	def show
		@guest = Guest.find(params[:id])
		@lounges = Lounge.all
		@reviews = Review.all
	end

	def edit
		@guest = Guest.find(params[:id])
	end

	def destroy
      	guest = Guest.find(params[:id])
      	guest.destroy
      	redirect_to admin_guests_path
 	end

  private
  def guest_params
    params.require(:guest).permit(:name, :car, :profile_image)
  end
end
