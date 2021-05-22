class Introduction < ApplicationRecord
  # 構造物テーブルとのアソシエーション
  belongs_to :structure
end
