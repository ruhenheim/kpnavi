# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :checkup_entry do
    entry_no 1
    staus 1
    request_datetime_1 "2014-02-05 10:40:58"
    request_datetime_2 "2014-02-05 10:40:58"
    request_datetime_3 "2014-02-05 10:40:58"
    cource_code 1
    request_type 1
    request_prefecture_code 1
    request_hospital "MyString"
    exam_datetime "2014-02-05 10:40:58"
    exam_hospital "MyString"
    exam_note "MyText"
  end
end
