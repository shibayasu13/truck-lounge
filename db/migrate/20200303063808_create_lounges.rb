class CreateLounges < ActiveRecord::Migration[5.2]
  def change
    create_table :lounges do |t|
      t.integer :guest_id
      t.integer :prefecture_id
      t.string :adress
      t.float :latitude
      t.float :longtude
      t.string :business_hours
      t.text :store_name
      t.text :parking
      t.string :bath_time
      t.integer :content

      t.timestamps
    end
  end
end
