class Tag < ApplicationRecord
  has_many :tag_time_entries, dependent: :destroy
  has_many :time_entries, through: :tag_time_entries

  def hours_spent
    time_entries.sum(:hours).round(1)
  end
end
