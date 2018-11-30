class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attachment :image
  has_many :posts
  has_many :reviews, dependent: :destroy
  has_one :point, dependent: :destroy

  validates :email, format: { with: /e1\d{6}@soka-u.jp/ }
end
