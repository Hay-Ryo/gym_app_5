class AddStarttimeToAttends < ActiveRecord::Migration[6.1]
  def change
  	 add_column :attends, :start_time, :datetime
  end
end
