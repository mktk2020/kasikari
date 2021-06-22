class CreateJancodes < ActiveRecord::Migration[6.1]
  def change
    create_table :jancodes do |t|
      t.integer :jancode
      t.integer :categoryno
      t.text :item

      t.timestamps
    end
  end
end
