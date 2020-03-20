class GuestsController < ApplicationController
  def show
  	@guest = Guest.find(params[:id])
    @lounges = @guest.lounges.all.paginate(page: params[:page], per_page: 5)
    @fav_lounges = @guest.fav_lounges.all.paginate(page: params[:page], per_page: 5)
  end

  def edit
  	@guest = Guest.find(params[:id])
  end

  def update
  	guest = Guest.find(params[:id])
  	guest.update(guest_params)
  	redirect_to guest_path
  end

  def destroy
      guest = Guest.find(params[:id])
      guest.destroy
      redirect_to root_path
  end

  private
  def guest_params
    params.require(:guest).permit(:name, :car, :profile_image)
  end
end
