class Comment < ActiveRecord::Base
  validates :body, presence: true
  mount_uploader :avatar, AvatarUploader
  belongs_to :user
  belongs_to :content
end
