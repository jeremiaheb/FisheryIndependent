FactoryGirl.define do
  factory :trip do
    date "2017-05-22"
    vessel "MyString"
    captain_id 1
    observer_id 1
    depart_time "2017-05-22 10:02:55"
    return_time "2017-05-22 10:02:55"
    trip_notes "MyText"
  end
end
