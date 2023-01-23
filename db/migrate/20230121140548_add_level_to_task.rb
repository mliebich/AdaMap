class AddLevelToTask < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :level, :integer, default: 0
  end
end
