class Ganre < ApplicationRecord
	enum class_status:{有効: 0, 無効: 1}
	has_many :reviews, dependent: :destroy
	has_many :lounge, dependent: :destroy
end
