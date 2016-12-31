class Teach < ActiveRecord::Base
  belongs_to :user
  belongs_to :search
  has_many :message6s
end
