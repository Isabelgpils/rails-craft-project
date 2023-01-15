class CreateMetallics < ActiveRecord::Migration[7.0]
  def change
    create_table :metallics do |t|
      t.text :brand
      t.text :type
      t.text :number
      t.text :color
      t.text :pattern
      t.text :image
      t.text :stash

      t.timestamps
    end
  end
end
