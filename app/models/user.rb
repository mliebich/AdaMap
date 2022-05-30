class User < ApplicationRecord
  has_secure_password
  has_many :tasks
  # goals is just the name of the association (a user by nature has goals, not tasks :-))
  has_and_belongs_to_many :goals, class_name: 'Task'
end
