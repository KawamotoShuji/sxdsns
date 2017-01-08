class FindWork < ActiveRecord::Base
  belongs_to :user
  belongs_to :search
  has_many :message2s

    #検索機能
  def self.search(search)
    if search
      FindWork.where("title like ? or body like ?", "%#{search}%", "%#{search}%")
    else
      FindWork.all #全て表示。
    end
  end
end
