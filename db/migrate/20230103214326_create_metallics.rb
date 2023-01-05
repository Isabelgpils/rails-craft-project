class CreateMetallics < ActiveRecord::Migration[7.0]
  def change
    create_table :metallics do |t|
      t.string :type
      t.string :number
      t.string :pattern
      t.boolean :stash
      t.string :image

      t.timestamps
    end
  end
end
