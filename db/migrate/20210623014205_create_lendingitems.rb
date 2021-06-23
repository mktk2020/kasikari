class CreateLendingitems < ActiveRecord::Migration[6.1]
  def change
    create_table :lendingitems do |t|
      t.string :jancode
      t.string :item
      t.string :category
      t.text :image_name
      t.integer :price
      t.integer :days
      t.text :memo

      t.timestamps
    end
  end
end
