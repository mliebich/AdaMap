class AddDefaultValueToDoneBoolean < ActiveRecord::Migration[7.0]
  def change
    change_column_default :task_progresses, :done, false
  end
end
