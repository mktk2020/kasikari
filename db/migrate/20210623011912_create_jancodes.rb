class CreateJancodes < ActiveRecord::Migration[6.1]
  def change
    create_table :jancodes do |t|
      t.string :jancode
      t.integer :categoryno
      t.string :item

      t.timestamps
    end
  end
end
