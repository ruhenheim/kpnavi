class CreateCheckupEntries < ActiveRecord::Migration
  def change
    create_table :checkup_entries do |t|
      t.integer :entry_no
      t.integer :staus
      t.datetime :request_datetime_1
      t.datetime :request_datetime_2
      t.datetime :request_datetime_3
      t.integer :cource_code
      t.integer :request_type
      t.integer :request_prefecture_code
      t.string :request_hospital
      t.datetime :exam_datetime
      t.string :exam_hospital
      t.text :exam_note

      t.timestamps
    end
  end
end
