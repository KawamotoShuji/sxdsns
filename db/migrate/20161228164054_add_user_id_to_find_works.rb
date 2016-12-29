class AddUserIdToFindWorks < ActiveRecord::Migration
  def change
    add_column :find_works, :user_id, :integer
  end
end
