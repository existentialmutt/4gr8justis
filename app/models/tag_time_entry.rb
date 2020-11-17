class TagTimeEntry < ApplicationRecord
  belongs_to :tag
  belongs_to :time_entry
end
