class CreateTagTimeEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :tag_time_entries do |t|
      t.references :tag, null: false, foreign_key: true
      t.references :time_entry, null: false, foreign_key: true

      t.timestamps
    end
  end
end
