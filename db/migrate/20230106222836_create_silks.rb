class CreateSilks < ActiveRecord::Migration[7.0]
  def change
    create_table :silks do |t|
      t.string :brand
      t.string :type
      t.string :number
      t.string :color
      t.string :pattern
      t.string :image
      t.string :stash

      t.timestamps
    end
  end
end
