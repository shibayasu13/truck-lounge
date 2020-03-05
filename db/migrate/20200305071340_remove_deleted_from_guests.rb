class RemoveDeletedFromGuests < ActiveRecord::Migration[5.2]
  def change
    remove_column :guests, :deleted, :boolean
  end
end
