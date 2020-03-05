class RemoveProfileImageFromGuests < ActiveRecord::Migration[5.2]
  def change
    remove_column :guests, :profile_image, :string
  end
end
