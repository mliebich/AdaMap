class Task < ApplicationRecord
  has_rich_text :content
  has_many :task_progresses
  has_many :users, through: :task_progresses
end
