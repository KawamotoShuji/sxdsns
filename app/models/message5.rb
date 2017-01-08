class Message5 < ActiveRecord::Base
  belongs_to :user
  belongs_to :search
  belongs_to :other
end
