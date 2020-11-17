class JobStatus < ApplicationRecord
  def self.get
    all.first_or_create!
  end
end
