class Admin::GuestsController < ApplicationController
	before_action :authenticate_admin!
	def index
		@guests = Guest.without_deleted.paginate(page: params[:page], per_page: 10)
		@delete_guests = Guest.only_deleted.paginate(page: params[:page], per_page: 10)
	end

	def show
		@guest = Guest.with_deleted.find(params[:id])
		@lounges = @guest.lounges.all.paginate(page: params[:page], per_page: 5)
		@reviews = @guest.reviews.all.paginate(page: params[:page], per_page: 5)
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

 	def return
 		@guest = Guest.only_deleted.find(params[:id])
 		@guest.restore
 		redirect_to admin_guests_path
 	end

 	def force_destroy
 		@guest = Guest.only_deleted.find(params[:id])
 		@guest.really_destroy!
 		redirect_to admin_guests_path
 	end
 	def search
	    if params[:name].present?
	      @guests = Guest.with_deleted.where('name LIKE ?', "%#{params[:name]}%")
	    else
	      @guests = Guest.none
	    end
  	end

  private
  def guest_params
    params.require(:guest).permit(:name, :car, :profile_image)
  end
end
