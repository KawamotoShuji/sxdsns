class Lab < ActiveRecord::Base
  belongs_to :user
  has_many :message3s
end
