class Message6 < ActiveRecord::Base
  belongs_to :user
  belongs_to :search
  belongs_to :teach
end
