class CreateLineids < ActiveRecord::Migration[6.1]
  def change
    create_table :lineids do |t|
      t.string :line_id
      t.string :flag

      t.timestamps
    end
  end
end
