class Search < ActiveRecord::Base

=begin
  belongs_to :user
  has_many :chats
  has_many :teaches
  has_many :find_work
  has_many :labs
  has_many :opinions
  has_many :others
  has_many :messages
  has_many :message2s
  has_many :message3s
  has_many :message4s
  has_many :message5s
  has_many :message6s

    def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Search.joins(:chats, :message2s, :message3s, :message4s, :message5s, :message6s).where('messages.content like ? or Message2s.content like ? or Message3s.content like ? or Message4s.content like ? or Message5s.content like ? or Message6s.content like ?', '%#{search}%', '%#{search}%', '%#{search}%', '%#{search}%', '%#{search}%', '%#{search}%')
      #Chat.where("body like ? or title like ?", "%#{search}%", "%#{search}%") or
      #FindWork.where("body like ? or title like ?", "%#{search}%", "%#{search}%") or
      #Lab.where("body like ? or title like ?", "%#{search}%", "%#{search}%") or
      #Opinion.where("body like ? or title like ?", "%#{search}%", "%#{search}%") or
      #Other.where("body like ? or title like ?", "%#{search}%", "%#{search}%") or
      #Teach.where("body like ? or title like ?", "%#{search}%", "%#{search}%")
    else
      Chat.all #全て表示。
    end
  end
=end

end