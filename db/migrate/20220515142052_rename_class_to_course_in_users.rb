class RenameClassToCourseInUsers < ActiveRecord::Migration[7.0]
  def up
    # class to course
    rename_column :users, :class, :course
  end

  def down
    # rollback: course to class
    rename_column :users, :course, :class
  end
end
