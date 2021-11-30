class AddMatchToMessages < ActiveRecord::Migration[6.0]
  def change
    add_reference :messages, :match, null: false, foreign_key: true
  end
end
