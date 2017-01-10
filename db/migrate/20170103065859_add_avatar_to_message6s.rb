class AddAvatarToMessage6s < ActiveRecord::Migration
  def change
    add_column :message6s, :avatar, :string
  end
end
