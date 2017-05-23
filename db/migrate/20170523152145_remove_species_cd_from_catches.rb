class RemoveSpeciesCdFromCatches < ActiveRecord::Migration[5.1]
  def change
    remove_column :catches, :species_cd, :string
  end 
end
