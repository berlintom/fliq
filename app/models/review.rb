class Review < ApplicationRecord
  has_one_attached :photo
  belongs_to :match
  belongs_to :user
  belongs_to :venue
  validates :rating, presence: true
end
