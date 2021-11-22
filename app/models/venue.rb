class Venue < ApplicationRecord
  has_many :profiles
  has_many :matches
  has_many :reviews
end
