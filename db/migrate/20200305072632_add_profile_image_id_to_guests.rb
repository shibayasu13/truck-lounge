class AddProfileImageIdToGuests < ActiveRecord::Migration[5.2]
  def change
    add_column :guests, :profile_image_id, :string
  end
end
