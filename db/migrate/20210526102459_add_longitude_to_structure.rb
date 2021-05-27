class AddLongitudeToStructure < ActiveRecord::Migration[5.2]
  def change
    add_column :structures, :longitude, :float
  end
end
