class AddAvatarToMessage2s < ActiveRecord::Migration
  def change
    add_column :message2s, :avatar, :string
  end
end
