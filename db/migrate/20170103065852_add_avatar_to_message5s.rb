class AddAvatarToMessage5s < ActiveRecord::Migration
  def change
    add_column :message5s, :avatar, :string
  end
end
