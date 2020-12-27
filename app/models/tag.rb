class Tag < ApplicationRecord
  has_many :tag_time_entries, dependent: :destroy
  has_many :time_entries, through: :tag_time_entries

  scope :budgeted, -> { where.not(budget: nil) }
  scope :unbudgeted, -> { where(budget: nil) }

  after_update_commit { broadcast_replace_to "tags" }

  validates :budget, presence: true, on: :update

  def hours_spent
    time_entries.sum(:hours).round(1)
  end
end
