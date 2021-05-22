class Tag < ApplicationRecord
  # 構造物テーブルとのアソシエーション
  has_many :structure_tags, dependent: :destroy
  has_many :structures, through: :structure_tags
  # accepts_nested_attributes_for :structure_tags, allow_destroy: true
end
