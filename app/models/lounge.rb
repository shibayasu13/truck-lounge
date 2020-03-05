class Lounge < ApplicationRecord
	has_many :reviews
	belongs_to :guest, optional: true
	attachment :store_image
	enum content: {駐車場のみ:0,食堂有り:1,入浴施設のみ:2,食堂入浴施設有り:3}
	enum busines_status: {営業中:0,閉店:1,改装中:2}
end
