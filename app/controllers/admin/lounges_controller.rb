class Admin::LoungesController < ApplicationController
before_action :authenticate_admin!
  def show
  	@lounge = Lounge.find(params[:id])
    @review = Review.new
    @reviews = Lounge.find(params[:id]).reviews.paginate(page: params[:page], per_page: 5)
  end

  def edit
  	@lounge = Lounge.find(params[:id])
  end

  def update
  	@lounge = Lounge.find(params[:id])
    @lounge.address = @lounge.prefecture + @lounge.address_city + @lounge.address_street
    @lounge.update(lounge_params)
    redirect_to admin_lounge_path(@lounge.id)
  end

	private
	  def lounge_params
	    params.require(:lounge).permit(:address_street,:address_city,:prefecture,:store_name, :address, :business_hours, :parking, :content, :busines_status, :review_id, :store_image, :guest_id, :latitude, :longitude)
	  end

end
