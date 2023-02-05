class Task < ApplicationRecord
  has_rich_text :content
  has_many :task_progresses, dependent: :destroy
  has_many :users, through: :task_progresses

  before_validation :sanitize_prerequisite_id

  enum level: { basics: 0, research: 1, product: 2 }, _prefix: true


  def no_pre?
    prerequisite_id.empty?
  end

  private

  def sanitize_prerequisite_id
    self.prerequisite_id = prerequisite_id.reject(&:blank?)&.uniq
  end
end
