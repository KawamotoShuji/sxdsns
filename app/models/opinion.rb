class Opinion < ActiveRecord::Base
  belongs_to :user
  belongs_to :search
  has_many :message4s

        #検索機能
  def self.search(search)
    if search
      Opinion.where("title like ? or body like ?", "%#{search}%", "%#{search}%")
    else
      Opinion.all #全て表示。
    end
  end
end
