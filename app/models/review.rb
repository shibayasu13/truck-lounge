class Review < ApplicationRecord
	attachment :review_image
	belongs_to :lounge
	belongs_to :guest
	belongs_to :ganre
	has_many :likes, dependent: :destroy
	def liked_by?(guest)
      likes.where(guest_id: guest.id).exists?
    end
end
