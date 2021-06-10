class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|

      t.string      :user_name
      t.integer     :user_id
      t.text        :content
      t.text        :title
      t.datetime    :start_time

      t.timestamps
    end
  end
end
