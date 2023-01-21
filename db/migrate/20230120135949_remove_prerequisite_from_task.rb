class RemovePrerequisiteFromTask < ActiveRecord::Migration[7.0]
  def change
    remove_column :tasks, :prerequisite_id
  end
end
