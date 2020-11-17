class CreateTimeEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :time_entries do |t|
      t.text :notes
      t.float :hours
      t.string :client
      t.string :project
      t.date :date

      t.timestamps
    end
  end
end
