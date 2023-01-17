class AddPassedToTaskProgresses < ActiveRecord::Migration[7.0]
  def change
    add_column :task_progresses, :passed, :boolean
  end
end
