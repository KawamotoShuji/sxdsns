class Lab < ActiveRecord::Base
  belongs_to :user
  belongs_to :search
  has_many :message3s
end
