class Guest::LoungesController < ApplicationController
  def index
    @lounges = Lounge.all
    @review = Review.find_by(params[:id])
  end

  def show
    @lounge = Lounge.find(params[:id])
    @review = Review.new
    @reviews = Lounge.find(params[:id]).reviews
    @guest = current_guest.id
  end

  def new
    @lounge = Lounge.new
  end

  def edit
    @lounge = Lounge.find(params[:id])
  end

  def create
    lounge = Lounge.new(lounge_params)
    lounge.save
    redirect_to guest_lounge_path(lounge.id)
  end

  def update
    lounge = Lounge.find(params[:id])
    lounge.update(lounge_params)
    redirect_to guest_lounge_path(lounge.id)
  end

  def destroy
  end

  private
  def lounge_params
    params.require(:lounge).permit(:store_name, :adress, :business_hours, :parking, :content, :busines_status, :review_id, :store_image)
  end
end
