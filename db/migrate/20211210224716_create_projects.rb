class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :city
      t.integer :budget
      t.integer :status
      t.string :client

      t.timestamps
    end
  end
end
