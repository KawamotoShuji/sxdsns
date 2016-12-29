class AddUserIdToTeaches < ActiveRecord::Migration
  def change
    add_column :teaches, :user_id, :integer
  end
end
