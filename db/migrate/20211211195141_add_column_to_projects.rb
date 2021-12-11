class AddColumnToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :details, :string, default: 'Project Details'
  end
end
