class AddRolesToAccounts < ActiveRecord::Migration[6.0]
  def change
    add_column :accounts, :roles, :integers
  end
end
