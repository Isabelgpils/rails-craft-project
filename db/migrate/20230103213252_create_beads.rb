class CreateBeads < ActiveRecord::Migration[7.0]
  def change
    create_table :beads do |t|
      t.string :number
      t.string :pattern
      t.boolean :stash

      t.timestamps
    end
  end
end
