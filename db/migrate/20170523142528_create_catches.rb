class CreateCatches < ActiveRecord::Migration[5.1]
  def change
    create_table :catches do |t|
      t.integer :sample_id
      t.integer :animal_id
      t.string :species_cd
      t.integer :fork_length
      t.integer :girth

      t.timestamps
    end
  end
end
