class CreateStructureTags < ActiveRecord::Migration[5.2]
  def change
    create_table :structure_tags do |t|
      t.integer :structure_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
