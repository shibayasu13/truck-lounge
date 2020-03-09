class RemoveLoungeIdToFavorites < ActiveRecord::Migration[5.2]
  def change
  	remove_column :favorites, :lounge_id, :integer
  end
end
