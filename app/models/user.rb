class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attachment :image

  # 構造物テーブルとのアソシエーション
  has_many :structure_users, dependent: :destroy
  has_many :structures, through: :structure_users

end
