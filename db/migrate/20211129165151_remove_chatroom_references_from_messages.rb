class RemoveChatroomReferencesFromMessages < ActiveRecord::Migration[6.0]
  def change
    remove_column :messages, :chatroom_id
  end
end
