class AddStarttimeToTask < ActiveRecord::Migration[6.1]
  def change
  	add_column :tasks, :start_time , :datetime
  end
end
