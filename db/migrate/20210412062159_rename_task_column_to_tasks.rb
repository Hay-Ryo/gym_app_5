class RenameTaskColumnToTasks < ActiveRecord::Migration[6.1]
  def change
  	rename_column :tasks, :task, :content
  end
end
