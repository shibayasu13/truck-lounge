class AddPrefectureToLounges < ActiveRecord::Migration[5.2]
  def change
    add_column :lounges, :prefecture, :string
    add_column :lounges, :address_city, :string
    add_column :lounges, :address_street, :string
  end
end
