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

      #5/27仕様変更：設計者テーブル、写真テーブル、説明文テーブルを集約
      t.string :last_name
      t.string :first_name
      t.string :image_id
      t.text :introduction

      t.timestamps
    end
  end
end
