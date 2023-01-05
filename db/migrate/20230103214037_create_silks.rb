class CreateSilks < ActiveRecord::Migration[7.0]
  def change
    create_table :silks do |t|
      t.integer :number
      t.string :brand
      t.string :color
      t.string :pattern
      t.boolean :stash
      t.string :image

      t.timestamps
    end
  end
end
