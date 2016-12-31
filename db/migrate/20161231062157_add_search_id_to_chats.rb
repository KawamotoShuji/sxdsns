class AddSearchIdToChats < ActiveRecord::Migration
  def change
    add_column :chats, :search_id, :integer
  end
end
