class Guest::LoungesController < ApplicationController
  def index
    @lounges = Lounge.all.paginate(page: params[:page], per_page: 10)
    @review = Review.find_by(params[:id])
  end

  def show
    @lounge = Lounge.find(params[:id])
    @review = Review.new
    @reviews = Lounge.find(params[:id]).reviews.paginate(page: params[:page], per_page: 5)
    @guest = current_guest.id
  end

  def new
    @lounge = Lounge.new
    current_guest_id = current_guest.id
  end

  def edit
    @lounge = Lounge.find(params[:id])
  end

  def create
    @lounge = Lounge.new(lounge_params)
    @lounge.guest_id = current_guest.id
    @lounge.address = @lounge.prefecture + @lounge.address_city + @lounge.address_street
    p Geocoder.coordinates(@lounge.address)
    if @lounge.save
       redirect_to guest_lounge_path(@lounge.id)
    else
    current_guest_id = current_guest.id
      render :new
    end
  end

  def update

    @lounge = Lounge.find(params[:id])
    @lounge.address = @lounge.prefecture + @lounge.address_city + @lounge.address_street
    @lounge.update(lounge_params)
    redirect_to guest_lounge_path(@lounge.id)
  end

  def destroy
  end

  def search
    if params[:store_name].present?
      @lounges = Lounge.where('store_name LIKE ?', "%#{params[:store_name]}%").paginate(page: params[:page], per_page: 5)

    else
      @lounges = Lounge.none.paginate(page: params[:page], per_page: 5)
    end
  end

  private
  def lounge_params
    params.require(:lounge).permit(:address_street,:address_city,:prefecture,:store_name, :address, :business_hours, :parking, :content, :busines_status, :review_id, :store_image, :guest_id, :latitude, :longitude)
  end
end
