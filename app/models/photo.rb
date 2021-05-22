class Photo < ApplicationRecord
  # 構造物テーブルとのアソシエーション
  belongs_to :structure

  # 画像アップ用メソッド
  attachment :image
end
