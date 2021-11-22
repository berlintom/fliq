class Review < ApplicationRecord
  belongs_to :match
  belongs_to :user
  belongs_to :venue
end
