class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :advice_tweets, dependent: :destroy
  accepts_nested_attributes_for :advice_tweets

  has_many :biographies, dependent: :destroy
  accepts_nested_attributes_for :biographies

  has_many :hobbies, dependent: :destroy
  accepts_nested_attributes_for :hobbies  
  
  has_many :quirks, dependent: :destroy
  accepts_nested_attributes_for :quirks
end

