class FindWork < ActiveRecord::Base
  belongs_to :user
  has_many :message2s
end
