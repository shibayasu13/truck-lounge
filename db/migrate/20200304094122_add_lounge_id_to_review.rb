class AddLoungeIdToReview < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :lounge_id, :integer
  end
end
