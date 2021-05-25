class Genre < ApplicationRecord
  # 構造物テーブルとのアソシエーション
  has_many :structures, dependent: :destroy
  accepts_nested_attributes_for :structures

  # バリデーション
  validates :name, presence: true



end
