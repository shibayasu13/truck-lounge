class Review < ApplicationRecord
	attachment :review_image
	belongs_to :lounge
	belongs_to :guest
	belongs_to :ganre
end
