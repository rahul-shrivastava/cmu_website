class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :reviewer
      t.datetime :when_reviewed
      t.text :review
      t.boolean :recommend
      t.integer :book_id
      t.boolean :review_helpful

      t.timestamps
    end
  end
end
