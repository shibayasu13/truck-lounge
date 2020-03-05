class AddBusinesStatusToLounges < ActiveRecord::Migration[5.2]
  def change
    add_column :lounges, :busines_status, :integer
  end
end
