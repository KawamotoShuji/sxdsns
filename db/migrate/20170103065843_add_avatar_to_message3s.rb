class AddAvatarToMessage3s < ActiveRecord::Migration
  def change
    add_column :message3s, :avatar, :string
  end
end
