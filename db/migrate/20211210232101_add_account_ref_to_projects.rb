class AddAccountRefToProjects < ActiveRecord::Migration[6.0]
  def change
    add_reference :projects, :account, null: false, foreign_key: true
  end
end
