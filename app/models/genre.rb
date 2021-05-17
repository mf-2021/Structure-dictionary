class Genre < ApplicationRecord
  # アソシエーション
  has_many :structures, dependent: :destroy

end
