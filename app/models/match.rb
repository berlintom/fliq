class Match < ApplicationRecord
  belongs_to :user
  belongs_to :venue
  has_many :participations
  has_many :reviews
  has_one :score
  has_many :messages

  validates :date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :capacity, presence: true
  validates :venue_id, presence: true
  validates :comment, length: { minimum: 10 }
end
