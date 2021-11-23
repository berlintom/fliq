class AddDateToMatches < ActiveRecord::Migration[6.0]
  def change
    add_column :matches, :date, :date
  end
end
