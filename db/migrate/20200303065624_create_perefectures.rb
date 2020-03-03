class CreatePerefectures < ActiveRecord::Migration[5.2]
  def change
    create_table :perefectures do |t|
      t.integer :prefecture_name

      t.timestamps
    end
  end
end
