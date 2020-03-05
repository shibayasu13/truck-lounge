class AddReviewImageIdToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :review_image_id, :string
  end
end
