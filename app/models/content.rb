class Content < ActiveRecord::Base
    validates :title, :body, presence: true
  belongs_to :user
  belongs_to :channel
  has_many :comments
end
