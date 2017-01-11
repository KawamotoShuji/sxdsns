class Teach < ActiveRecord::Base
  validates :title, :body, presence: true
  belongs_to :user
  belongs_to :search
  has_many :message6s

    def self.search(search)
    if search
      Teach.where("title like ? or body like ?", "%#{search}%", "%#{search}%")
    else
      Teach.all #全て表示。
    end
  end
end
