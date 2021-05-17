class CreateDesigners < ActiveRecord::Migration[5.2]
  def change
    create_table :designers do |t|
      t.integer :structure_id
      t.string :last_name
      t.string :first_name

      t.timestamps
    end
  end
end
