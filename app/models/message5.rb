class Message5 < ActiveRecord::Base
  validates :contents, presence: true
  mount_uploader :avatar, AvatarUploader
  belongs_to :user
  belongs_to :search
  belongs_to :other
end
