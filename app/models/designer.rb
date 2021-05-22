class Designer < ApplicationRecord
  # 構造物テーブルとのアソシエーション
  belongs_to :structure
end
