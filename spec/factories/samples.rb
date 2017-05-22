FactoryGirl.define do
  factory :sample do
    grid_number 1
    arrival_time "2017-05-22 13:54:01"
    wind_speed 1
    wave_height 1
    current_speed "MyString"
    sample_notes "MyText"
  end
end
