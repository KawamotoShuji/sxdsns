class Message2 < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  belongs_to :user
  belongs_to :search
  belongs_to :find_work
end
