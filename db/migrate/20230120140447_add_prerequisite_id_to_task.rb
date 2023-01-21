class AddPrerequisiteIdToTask < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :prerequisite_id, :integer, array: true, default: []
  end
end
