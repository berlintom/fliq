class Venue < ApplicationRecord
  has_many_attached :photos
  has_many :profiles
  has_many :matches
  has_many :reviews
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
