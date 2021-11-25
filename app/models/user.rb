class User < ApplicationRecord
  has_one_attached :photo
  has_one :profile
  has_many :matches
  has_many :participations
  has_many :reviews
  delegate :point_sum, to: :profile

  validates :first_name, :user_name, :phone_number, :photo, presence: true
  validates :phone_number, :user_name, uniqueness: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
