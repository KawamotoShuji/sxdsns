class Teach < ActiveRecord::Base
  belongs_to :user
  has_many :message6s
end
