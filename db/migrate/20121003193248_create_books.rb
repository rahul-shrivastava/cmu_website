class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :description
      t.float :price
      t.text :editor_review
      t.string :publisher
      t.string :language
      t.boolean :ebook
      t.string :seller
      t.string :file_size

      t.timestamps
    end
  end
end
