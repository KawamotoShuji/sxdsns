class AddSearchIdToTeaches < ActiveRecord::Migration
  def change
    add_column :teaches, :search_id, :integer
  end
end
