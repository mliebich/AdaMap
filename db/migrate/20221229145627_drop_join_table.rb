class DropJoinTable < ActiveRecord::Migration[7.0]
  def change
    drop_join_table :tasks, :users
  end
end
