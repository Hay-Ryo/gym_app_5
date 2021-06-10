class RemoveScheduleidFromLike < ActiveRecord::Migration[6.1]
  def change
  	remove_column :likes, :schedule_id , :integer
  end
end
