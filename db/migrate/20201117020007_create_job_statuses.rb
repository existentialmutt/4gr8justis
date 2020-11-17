class CreateJobStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :job_statuses do |t|
      t.string :state, null: false, default: "not_running"

      t.timestamps
    end
  end
end
