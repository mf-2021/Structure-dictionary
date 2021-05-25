class Designer < ApplicationRecord
  # 構造物テーブルとのアソシエーション
  belongs_to :structure

  # バリデーション
  validates :last_name, presence: true



end
