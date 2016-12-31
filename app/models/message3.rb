class Message3 < ActiveRecord::Base
  belongs_to :user
  belongs_to :search
  belongs_to :lab
end
