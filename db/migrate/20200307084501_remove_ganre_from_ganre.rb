class RemoveGanreFromGanre < ActiveRecord::Migration[5.2]
  def change
    remove_column :ganres, :ganre, :integer
  end
end
