class AddVenueToReviews < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :venue, null: false, foreign_key: true
  end
end
