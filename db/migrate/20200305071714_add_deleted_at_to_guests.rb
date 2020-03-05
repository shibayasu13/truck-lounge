class AddDeletedAtToGuests < ActiveRecord::Migration[5.2]
  def change
    add_column :guests, :deleted_at, :datetime
  end
end
