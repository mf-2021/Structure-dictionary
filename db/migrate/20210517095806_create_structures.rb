class CreateStructures < ActiveRecord::Migration[5.2]
  def change
    create_table :structures do |t|
      t.integer :user_id
      t.integer :genre_id
      t.string :name
      t.string :postal_code
      t.string :prefecture
      t.string :city
      t.string :address

      t.timestamps
    end
  end
end
