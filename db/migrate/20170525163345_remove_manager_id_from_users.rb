class RemoveManagerIdFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :manager_id, :integer
  end
end
