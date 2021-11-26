class AddEndTimeToMatches < ActiveRecord::Migration[6.0]
  def change
    add_column :matches, :end_time, :time
  end
end
