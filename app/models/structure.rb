class Structure < ApplicationRecord
  # `ユーザーテーブルとのアソシエーション
  has_many :structure_users, dependent: :destroy
  has_many :users, through: :structure_users
  accepts_nested_attributes_for :structure_users

  # 設計者テーブルとのアソシエーション
  # has_many :designers, dependent: :destroy
  # accepts_nested_attributes_for :designers

  # 写真テーブルとのアソシエーション
  # has_many :photos, dependent: :destroy
  # accepts_nested_attributes_for :photos

  # 説明文テーブルとのアソシエーション
  # has_many :introductions, dependent: :destroy
  # accepts_nested_attributes_for :introductions

  # タグテーブルとのアソシエーション
  has_many :structure_tags, dependent: :destroy
  has_many :tags, through: :structure_tags
  accepts_nested_attributes_for :structure_tags

  # ジャンルテーブルとのアソシエーション
  belongs_to :genre

  # 画像アップ用メソッド
  attachment :image

  # バリデーション
  validates :name, presence: true

  # 所在地関連カラムを結合
  def structure_address
    [prefecture, city, address].compact.join(', ')
  end
  # オブジェクトの所在地をジオコーダーに指示
  geocoded_by :structure_address
  # コールバックを介して呼び出せるジオコードメソッドを追加
  after_validation :geocode, if: :address_changed?

end
