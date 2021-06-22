class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.text :userid
      t.text :username
      t.text :usermail
      t.text :pass
      t.text :prefecture
      t.text :address

      t.timestamps
    end
  end
end
