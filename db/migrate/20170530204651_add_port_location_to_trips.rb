class AddPortLocationToTrips < ActiveRecord::Migration[5.1]
  def change
    add_column :trips, :port_location, :string
  end
end
