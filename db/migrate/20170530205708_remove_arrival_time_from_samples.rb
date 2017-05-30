class RemoveArrivalTimeFromSamples < ActiveRecord::Migration[5.1]
  def change
    remove_column :samples, :arrival_time, :datetime
  end
end
