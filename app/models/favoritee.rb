class Favoritee < ApplicationRecord
	belongs_to :guest
	belongs_to :lounge
end
