class Message6 < ActiveRecord::Base
  validates :contents, presence: true
  mount_uploader :avatar, AvatarUploader
  belongs_to :user
  belongs_to :search
  belongs_to :teach
end
