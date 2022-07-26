class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :headshot
  has_one_attached :funny_photo
  has_many :profiles
  has_many :quirks
  has_many :hobbies
  has_one :twitadvices
end
