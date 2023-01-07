class CreateDmcs < ActiveRecord::Migration[7.0]
  def change
    create_table :dmcs do |t|
      t.string :number
      t.string :color
      t.string :rgb_value
      t.string :image
      t.string :stash

      t.timestamps
    end
  end
end
