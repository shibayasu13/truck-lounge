class RemoveReviewImageFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :review_image, :string
  end
end
