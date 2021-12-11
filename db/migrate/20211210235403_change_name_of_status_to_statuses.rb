class ChangeNameOfStatusToStatuses < ActiveRecord::Migration[6.0]
  def change
    rename_column :projects, :status , :statuses

  end
end
