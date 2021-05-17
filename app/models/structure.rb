class Structure < ApplicationRecord
  # アソシエーション
  has_many :structure_users, dependent: :destroy
  has_many :designers, dependent: :destroy
  has_many :photos, dependent: :destroy
  has_many :introductions, dependent: :destroy
  has_many :structure_tags, dependent: :destroy
  belongs_to :genre

end
