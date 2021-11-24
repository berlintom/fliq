class AddFullToMatches < ActiveRecord::Migration[6.0]
  def change
    add_column :matches, :full, :boolean, default: false
  end
end
