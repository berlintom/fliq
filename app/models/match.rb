class Match < ApplicationRecord
  belongs_to :user
  belongs_to :venue
  has_many :participations, dependent: :delete_all
  has_many :reviews, dependent: :delete_all
  has_one :score
  has_many :messages, dependent: :delete_all

  validates :date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :capacity, presence: true
  validates :venue_id, presence: true
  validates :comment, length: { minimum: 5 }
  validates :comment, length: { maximum: 40 }
end
