class StructureUser < ApplicationRecord
  # ユーザーテーブルとのアソシエーション
  belongs_to :user

  # 構造物テーブルとのアソシエーション
  belongs_to :structure

end
