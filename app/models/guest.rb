class Guest < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  acts_as_paranoid
  attachment :profile_image
  has_many :reviews
  has_many :lounges
  has_many :favoritees
  has_many :fav_lounges, through: :favoritees, source: :lounge
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def like(lounge)
  	favoritees.find_or_create_by(lounge_id: lounge.id)
  end
  def unlike(lounge)
  	favoritee = favoritees.find_by(lounge_id: lounge.id)
  end
end
