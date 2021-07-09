class CreateLendingInformations < ActiveRecord::Migration[6.1]
  def change
    create_table :lending_informations do |t|
      t.string :item
      t.integer :days
      t.date :lending_days

      t.timestamps
    end
  end
end
