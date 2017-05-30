class AddLatLonSeparatedToDrop < ActiveRecord::Migration[5.1]
  def change

    add_column :drops, :start_lat_deg, :integer
    add_column :drops, :start_lat_min, :float
    add_column :drops, :start_lon_deg, :integer
    add_column :drops, :start_lon_min, :float

    add_column :drops, :end_lat_deg, :integer
    add_column :drops, :end_lat_min, :float
    add_column :drops, :end_lon_deg, :integer
    add_column :drops, :end_lon_min, :float
  end
end
