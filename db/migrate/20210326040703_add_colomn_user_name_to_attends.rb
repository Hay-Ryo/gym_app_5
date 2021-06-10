class AddColomnUserNameToAttends < ActiveRecord::Migration[6.1]
  def change
  	add_column :attends, :user_name, :string
  end
end
