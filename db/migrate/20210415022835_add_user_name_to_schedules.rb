class AddUserNameToSchedules < ActiveRecord::Migration[6.1]
  def change
  	add_column :schedules, :start_time , :datetime
  	add_column :schedules, :user_name , :string
  	add_column :schedules, :user_id , :integer
  	add_column :schedules, :content , :text
  	add_column :schedules, :title , :text
  end
end
