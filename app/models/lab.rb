class Lab < ActiveRecord::Base
  validates :title, :body, presence: true
  belongs_to :user
  belongs_to :search
  has_many :message3s

      #検索機能
  def self.search(search)
    if search
      Lab.where("title like ? or body like ?", "%#{search}%", "%#{search}%")
    else
      Lab.all #全て表示。
    end
  end
end
