class Task < ApplicationRecord
  has_rich_text :content
  has_many :task_progresses
  has_many :users, through: :task_progresses

  before_validation :sanitize_prerequisite_id

  scope :no_pre, -> { where('prerequisite_id is null') }

  def no_pre?
    prerequisite_id.empty?
  end

  private

  def sanitize_prerequisite_id
    self.prerequisite_id = prerequisite_id.reject(&:blank?)&.uniq
  end
end
