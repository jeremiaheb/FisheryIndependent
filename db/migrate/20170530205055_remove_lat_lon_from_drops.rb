class RemoveLatLonFromDrops < ActiveRecord::Migration[5.1]
  def change

    remove_column :drops, :start_lat, :string
    remove_column :drops, :start_lon, :string
    remove_column :drops, :end_lat, :string
    remove_column :drops, :end_lon, :string

  end
end
