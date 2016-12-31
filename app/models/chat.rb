class Chat < ActiveRecord::Base
  belongs_to :user
  belongs_to :search
  has_many :messages
end
