class CreateTaskProgresses < ActiveRecord::Migration[7.0]
  def change
    create_table :task_progresses do |t|
      t.belongs_to :task, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.boolean :done

      t.timestamps
    end
  end
end
