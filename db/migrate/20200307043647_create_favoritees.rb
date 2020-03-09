class CreateFavoritees < ActiveRecord::Migration[5.2]
  def change
    create_table :favoritees do |t|
      t.integer :guest_id
      t.integer :lounge_id

      t.timestamps
      t.index [:guest_id, :lounge_id], unique: true
    end
  end
end
