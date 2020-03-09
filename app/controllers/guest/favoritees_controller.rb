class Guest::FavoriteesController < ApplicationController
  def  create
  	guest = current_guest
  	lounge = Lounge.find(params[:lounge_id])
  	favoritee = Favoritee.new(guest_id: guest.id, lounge_id:lounge.id)

  	if favoritee.save
  		redirect_to guest_lounge_path(lounge.id)
  	else
  		redirect_to guest_lounge_path(lounge.id)
  	end
  end

  def destroy
  	@lounge = Lounge.find(params[:lounge_id])
  	favoritee = Favoritee.find_by(params[:id])
  	if favoritee.destroy
  	   redirect_to guest_lounge_path(@lounge.id)
  	end
  end
end
