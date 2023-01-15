class CreateDmcs < ActiveRecord::Migration[7.0]
  def change
    create_table :dmcs do |t|
      t.text :number
      t.text :color
      t.text :rgb_value
      t.text :image
      t.text :stash

      t.timestamps
    end
  end
end
