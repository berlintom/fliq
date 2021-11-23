class Match < ApplicationRecord
  belongs_to :user
  belongs_to :venue
  has_many :participations
  has_many :reviews

  
end
