class RemoveDatesFromMatches < ActiveRecord::Migration[6.0]
  def change
    remove_column :matches, :start_date, :date
    remove_column :matches, :end_date, :date
  end
end
