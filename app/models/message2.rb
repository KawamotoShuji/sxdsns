class Message2 < ActiveRecord::Base
  belongs_to :user
  belongs_to :search
  belongs_to :find_work
end
