json.array!(@checkup_entries) do |checkup_entry|
  json.extract! checkup_entry, :id, :entry_no, :staus, :request_datetime_1, :request_datetime_2, :request_datetime_3, :cource_code, :request_type, :request_prefecture_code, :request_hospital, :exam_datetime, :exam_hospital, :exam_note
  json.url checkup_entry_url(checkup_entry, format: :json)
end
