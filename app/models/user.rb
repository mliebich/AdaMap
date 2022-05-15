class User < ApplicationRecord
  has_secure_password
  has_many :tasks
  has_and_belongs_to_many :goals, class_name: 'Task'
end
