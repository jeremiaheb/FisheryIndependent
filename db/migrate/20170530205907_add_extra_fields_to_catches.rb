class AddExtraFieldsToCatches < ActiveRecord::Migration[5.1]
  def change
    add_column :catches, :baits_taken, :string
    add_column :catches, :retained, :string
    add_column :catches, :tag_number, :string
  end
end
