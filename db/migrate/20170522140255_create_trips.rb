class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.date :date
      t.string :vessel
      t.integer :captain_id
      t.integer :observer_id
      t.datetime :depart_time
      t.datetime :return_time
      t.text :trip_notes

      t.timestamps
    end
  end
end
