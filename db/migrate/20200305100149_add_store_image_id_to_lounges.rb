class AddStoreImageIdToLounges < ActiveRecord::Migration[5.2]
  def change
    add_column :lounges, :store_image_id, :string
  end
end
