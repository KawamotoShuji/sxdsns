class Opinion < ActiveRecord::Base
  belongs_to :user
  has_many :message4s
end
