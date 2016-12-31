class Other < ActiveRecord::Base
  belongs_to :user
  belongs_to :search
  has_many :message5s
end
