class Participation < ApplicationRecord
  belongs_to :match
  belongs_to :user
  delegate :point_sum, to: :user
end
