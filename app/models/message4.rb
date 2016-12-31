class Message4 < ActiveRecord::Base
  belongs_to :user
  belongs_to :search
  belongs_to :opinion
end
