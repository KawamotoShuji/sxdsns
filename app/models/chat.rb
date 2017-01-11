class Chat < ActiveRecord::Base
  validates :title, :body, presence: true
  belongs_to :user
  belongs_to :search
  has_many :messages

  #検索機能
  def self.search(search)
    if search
      Chat.where("title like ? or body like ?", "%#{search}%", "%#{search}%")
    else
      Chat.all #全て表示。
    end
  end

end
