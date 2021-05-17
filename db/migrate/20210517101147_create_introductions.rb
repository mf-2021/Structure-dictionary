class CreateIntroductions < ActiveRecord::Migration[5.2]
  def change
    create_table :introductions do |t|
      t.integer :structure_id
      t.text :introduction

      t.timestamps
    end
  end
end
