class Admin::GuestsController < ApplicationController
	def index
		@guests = Guest.without_deleted
		@delete_guests = Guest.only_deleted
	end

	def show
		@lounges = Lounge.all
		@reviews = Review.all
		@guest = Guest.with_deleted.find(params[:id])
		# binding.pry
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
