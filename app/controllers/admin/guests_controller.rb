class Admin::GuestsController < ApplicationController
	def index
		@guests = Guest.all
	end

	def show
		@guest = Guest.find(params[:id])
		@lounges = Lounge.all
		@reviews = Review.all
	end
end
