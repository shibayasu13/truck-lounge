class AddCarProfileImageDeletedToGuests < ActiveRecord::Migration[5.2]
  def change
    add_column :guests, :car, :string
    add_column :guests, :profile_image, :string
    add_column :guests, :deleted, :boolean
  end
end
