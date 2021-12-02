class Score < ApplicationRecord
  belongs_to :match

  validates :score_a, presence: true
  validates :score_b, presence: true
end
