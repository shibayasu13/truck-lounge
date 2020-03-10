class RenameAdressToLounges < ActiveRecord::Migration[5.2]
  def change
  	rename_column :lounges, :adress, :address
  end
end
