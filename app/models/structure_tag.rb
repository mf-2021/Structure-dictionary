class StructureTag < ApplicationRecord
  # 構造物テーブルとのアソシエーション
  belongs_to :structure

  # タグテーブルとのアソシエーション
  belongs_to :tag

end
