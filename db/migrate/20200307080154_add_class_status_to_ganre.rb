class AddClassStatusToGanre < ActiveRecord::Migration[5.2]
  def change
    add_column :ganres, :class_status, :integer
  end
end
