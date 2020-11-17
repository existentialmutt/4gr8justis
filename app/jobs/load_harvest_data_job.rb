class LoadHarvestDataJob < ApplicationJob
  queue_as :default

  def perform
    JobStatus.get.update state: "running"
    TimeEntry.destroy_all

    client = Harvesting::Client.new

    # load entries from Harvest
    # TODO only load past year
    client.time_entries.each do |te|
      break if Date.parse(te.spent_date) < (Time.now - 6.months)

      TimeEntry.create!(
        notes: te.notes,
        hours: te.hours,
        client: te.client.name,
        project: te.project.name,
        date: te.spent_date
      )
    end

    # load tags
    TimeEntry.all.each do |time_entry|
      words = time_entry.notes.to_s.split(/\s+/)
      words.each do |word|
        next unless /^#/.match?(word)

        tagname = word[1..-1]
        next unless tagname.present?

        tag = Tag.find_or_create_by! name: tagname
        tag.time_entries << time_entry
      end
    end
    JobStatus.get.update state: "complete"
  rescue
    JobStatus.get.update state: "error"
  end
end
