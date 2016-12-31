class Opinion < ActiveRecord::Base
  belongs_to :user
  belongs_to :search
  has_many :message4s
end
