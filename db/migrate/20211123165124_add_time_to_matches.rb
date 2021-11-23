class AddTimeToMatches < ActiveRecord::Migration[6.0]
  def change
    add_column :matches, :start_time, :time
  end
end
