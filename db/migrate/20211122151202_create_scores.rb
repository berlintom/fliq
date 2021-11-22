class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.integer :score_a
      t.integer :score_b
      t.references :match, null: false, foreign_key: true

      t.timestamps
    end
  end
end
