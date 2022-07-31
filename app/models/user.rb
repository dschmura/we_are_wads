class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :quirks, dependent: :destroy
  accepts_nested_attributes_for :quirks

  has_many :biographies, dependent: :destroy
  accepts_nested_attributes_for :biographies


  
end

