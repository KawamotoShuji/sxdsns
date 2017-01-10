class AddAvatarToMessage4s < ActiveRecord::Migration
  def change
    add_column :message4s, :avatar, :string
  end
end
