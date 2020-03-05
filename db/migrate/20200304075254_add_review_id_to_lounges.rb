class AddReviewIdToLounges < ActiveRecord::Migration[5.2]
  def change
    add_column :lounges, :review_id, :integer
  end
end
