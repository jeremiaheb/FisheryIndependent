class AddTripIdToSamples < ActiveRecord::Migration[5.1]
  def change
    add_column :samples, :trip_id, :integer
  end
end
