class AddLatitudeToStructure < ActiveRecord::Migration[5.2]
  def change
    add_column :structures, :latitude, :float
  end
end
