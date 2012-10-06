class RemoveWhenReviewedFromReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :when_reviewed
  end
end
