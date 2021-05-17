class StructureUser < ApplicationRecord
  # アソシエーション
  belongs_to :user
  belongs_to :structure

end
