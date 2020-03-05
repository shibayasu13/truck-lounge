class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :guest_id
      t.integer :lounge_id

      t.timestamps
    end
  end
end
