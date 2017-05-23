class CreateDrops < ActiveRecord::Migration[5.1]
  def change
    create_table :drops do |t|
      t.integer :sample_id
      t.integer :drop_number
      t.string :lines
      t.datetime :start_time
      t.integer :start_depth
      t.string :start_lat
      t.string :start_lon
      t.datetime :end_time
      t.integer :end_depth
      t.string :end_lat
      t.string :end_lon
      t.string :fish_caught

      t.timestamps
    end
  end
end
