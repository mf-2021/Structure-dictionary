class Structure < ApplicationRecord
  # `ユーザーテーブルとのアソシエーション
  has_many :structure_users, dependent: :destroy
  has_many :users, through: :structure_users
  accepts_nested_attributes_for :structure_users

  # 設計者テーブルとのアソシエーション
  has_many :designers, dependent: :destroy
  accepts_nested_attributes_for :designers

  # 写真テーブルとのアソシエーション
  has_many :photos, dependent: :destroy
  accepts_nested_attributes_for :photos

  # 説明文テーブルとのアソシエーション
  has_many :introductions, dependent: :destroy
  accepts_nested_attributes_for :introductions

  # タグテーブルとのアソシエーション
  has_many :structure_tags, dependent: :destroy
  has_many :tags, through: :structure_tags
  accepts_nested_attributes_for :structure_tags, allow_destroy: true

  # ジャンルテーブルとのアソシエーション
  belongs_to :genre

end
