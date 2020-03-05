class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :guest_id
      t.integer :ganre_id
      t.text :explanation
      t.string :review_image
      t.float :rate

      t.timestamps
    end
  end
end
