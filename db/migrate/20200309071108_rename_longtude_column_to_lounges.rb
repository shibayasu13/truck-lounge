class RenameLongtudeColumnToLounges < ActiveRecord::Migration[5.2]
  def change
  		rename_column :lounges, :longtude, :longitude
  end
end
