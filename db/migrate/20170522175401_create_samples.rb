class CreateSamples < ActiveRecord::Migration[5.1]
  def change
    create_table :samples do |t|
      t.integer :grid_number
      t.datetime :arrival_time
      t.integer :wind_speed
      t.integer :wave_height
      t.string :current_speed
      t.text :sample_notes

      t.timestamps
    end
  end
end
