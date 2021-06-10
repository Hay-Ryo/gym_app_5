class AddtaskToAttends < ActiveRecord::Migration[6.1]
  def change
  	add_column :attends, :title, :string
    add_column :attends, :task, :string
  end
end
