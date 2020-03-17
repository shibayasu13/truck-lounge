class Lounge < ApplicationRecord
	has_many :reviews
	has_many :favoritees
	has_many :guests, through: :favoritees
	attachment :store_image
	enum content: {駐車場のみ:0,食堂有り:1,入浴施設のみ:2,食堂入浴施設有り:3}
	enum busines_status: {営業中:0,閉店:1,改装中:2}

    validates :store_name, presence: true
    validates :parking, presence: true
    validates :business_hours, presence: true
    
  geocoded_by :address
  after_validation :geocode

 
end