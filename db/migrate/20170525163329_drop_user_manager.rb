class DropUserManager < ActiveRecord::Migration[5.1]
  def change
    drop_table :user_managers
  end
end
