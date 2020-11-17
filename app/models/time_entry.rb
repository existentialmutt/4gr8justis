class TimeEntry < ApplicationRecord
  has_many :tag_time_entries, dependent: :destroy
end
