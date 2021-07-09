class AddColumnAccounts < ActiveRecord::Migration[6.1]
  def change
    add_column :accounts, :u_name, :string, null: false, default: ""
  end
end
