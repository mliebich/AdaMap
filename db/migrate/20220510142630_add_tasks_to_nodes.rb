class AddTasksToNodes < ActiveRecord::Migration[7.0]
  def change
    add_reference :nodes, :task, null: false, foreign_key: true
  end
end
