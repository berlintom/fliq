class CreateVenues < ActiveRecord::Migration[6.0]
  def change
    create_table :venues do |t|
      t.string :address
      t.boolean :outdoor
      t.float :price
      t.string :table_type

      t.timestamps
    end
  end
end
