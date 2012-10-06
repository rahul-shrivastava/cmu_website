class ModifyPriceFromBook < ActiveRecord::Migration
def change
  change_column :books, :price, :decimal, :scale => 2
  change_column :books, :file_size, :decimal, :scale => 2
end
end
