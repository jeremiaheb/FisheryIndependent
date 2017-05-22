json.extract! trip, :id, :date, :vessel, :captain_id, :observer_id, :depart_time, :return_time, :trip_notes, :created_at, :updated_at
json.url trip_url(trip, format: :json)
