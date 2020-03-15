class Lounge < ApplicationRecord
  after_validation :geocode

	has_many :reviews
	has_many :favoritees
	has_many :guests, through: :favoritees
	attachment :store_image
	enum content: {駐車場のみ:0,食堂有り:1,入浴施設のみ:2,食堂入浴施設有り:3}
	enum busines_status: {営業中:0,閉店:1,改装中:2}

    validates :store_name, presence: true
    validates :parking, presence: true
    validates :business_hours, presence: true

  private
  def geocode
    uri = URI.escape("https://maps.googleapis.com/maps/api/geocode/json?address="+self.address.gsub(" ", "")+"&key=AIzaSyDe-nyw8hZlqdHxNhjpWW1EO41bSCP6dQE")
    res = HTTP.get(uri).to_s
    response = JSON.parse(res)
    self.latitude = response["results"][0]["geometry"]["location"]["lat"]
    self.longitude = response["results"][0]["geometry"]["location"]["lng"]
  end
end