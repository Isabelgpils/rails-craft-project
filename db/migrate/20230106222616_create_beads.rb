class CreateBeads < ActiveRecord::Migration[7.0]
  def change
    create_table :beads do |t|
      t.string :number
      t.string :color
      t.string :pattern
      t.string :image
      t.string :stash

      t.timestamps
    end
  end
end
