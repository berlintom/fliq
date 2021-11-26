class RemoveDurationFromMatches < ActiveRecord::Migration[6.0]
  def change
    remove_column :matches, :duration, :time
  end
end
