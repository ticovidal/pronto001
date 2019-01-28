class RemoveProposeToChats < ActiveRecord::Migration[5.2]
  def change
  	remove_column :chats, :propose_id
  end
end
