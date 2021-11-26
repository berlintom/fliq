class AddDurationToMatches < ActiveRecord::Migration[6.0]
  def change
    add_column :matches, :duration, :time
  end
end
