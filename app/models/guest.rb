class Guest < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  acts_as_paranoid
  attachment :profile_image
  has_many :reviews
  has_many :lounges
  has_many :favoritees
  has_many :likes
  has_many :fav_lounges, through: :favoritees, source: :lounge
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
