class AddColumnAccounts2 < ActiveRecord::Migration[6.1]
  def change
    add_column :accounts, :prefecture, :string
  end
end
