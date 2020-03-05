class Guest < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  acts_as_paranoid
  attachment :profile_image
  has_many :reviews
  has_many :lounges
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
