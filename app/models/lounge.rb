class Lounge < ApplicationRecord
	has_many :reviews
	has_many :favoritees
	has_many :guests, through: :favoritees
	attachment :store_image
	enum content: {駐車場のみ:0,食堂有り:1,入浴施設のみ:2,食堂入浴施設有り:3}
	enum busines_status: {営業中:0,閉店:1,改装中:2}
  belongs_to :guest

    validates :store_name, presence: true, uniqueness: true
    validates :parking, presence: true
    validates :business_hours, presence: true
    validates :address,uniqueness: true

  geocoded_by :address
  after_validation :geocode

  def self.search(search)
      if search
        Lounge.where(['store_name OR prefecture LIKE ? OR address_city LIKE ?', "%#{:search}%","%#{:search}%","%#{:search}%"])
      else
        Lounge.all
      end
    end
end