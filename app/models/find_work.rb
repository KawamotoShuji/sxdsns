class FindWork < ActiveRecord::Base
  belongs_to :user
  belongs_to :search
  has_many :message2s
end
