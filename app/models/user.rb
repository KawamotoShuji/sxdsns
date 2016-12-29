class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

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
end
