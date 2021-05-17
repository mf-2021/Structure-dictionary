class CreateStructureUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :structure_users do |t|
      t.integer :user_id
      t.integer :structure_id

      t.timestamps
    end
  end
end
