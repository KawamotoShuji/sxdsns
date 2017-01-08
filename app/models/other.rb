class Other < ActiveRecord::Base
  belongs_to :user
  belongs_to :search
  has_many :message5s

          #検索機能
  def self.search(search)
    if search
      Other.where("title like ? or body like ?", "%#{search}%", "%#{search}%")
    else
      Other.all #全て表示。
    end
  end
end
