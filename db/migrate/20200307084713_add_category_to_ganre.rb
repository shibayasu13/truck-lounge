class AddCategoryToGanre < ActiveRecord::Migration[5.2]
  def change
    add_column :ganres, :category, :string
  end
end
