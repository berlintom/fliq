class User < ApplicationRecord
  has_one_attached :photo
  has_one :profile
  has_many :matches
  has_many :participations
  has_many :reviews
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
