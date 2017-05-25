class RenameObserverIdToUserIdInTrip < ActiveRecord::Migration[5.1]
  def change
    rename_column :trips, :observer_id, :user_id
  end
end
