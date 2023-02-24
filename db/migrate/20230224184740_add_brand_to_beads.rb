class AddBrandToBeads < ActiveRecord::Migration[7.0]
  def change
    add_column :beads, :brand, :string
  end
end
