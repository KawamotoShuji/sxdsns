class Message6 < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  belongs_to :user
  belongs_to :teach
end
