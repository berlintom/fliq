class AddMatchRefToChatrooms < ActiveRecord::Migration[6.0]
  def change
    add_reference :chatrooms, :match, null: false, foreign_key: true
  end
end
