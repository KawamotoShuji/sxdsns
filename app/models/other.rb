class Other < ActiveRecord::Base
  belongs_to :user
  has_many :message5s
end
