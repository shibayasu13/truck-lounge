class RemoveGuestIdToFavorites < ActiveRecord::Migration[5.2]
  def change
  	  	remove_column :favorites, :guest_id, :integer
  end
end
