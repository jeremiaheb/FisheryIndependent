class CreateAnimals < ActiveRecord::Migration[5.1]
  def change
    create_table :animals do |t|
      t.string :species_cd
      t.string :scientific_name
      t.string :common_name

      t.timestamps
    end
  end
end
