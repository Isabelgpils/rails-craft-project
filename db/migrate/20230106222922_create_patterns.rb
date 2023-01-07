class CreatePatterns < ActiveRecord::Migration[7.0]
  def change
    create_table :patterns do |t|
      t.string :brand
      t.string :number
      t.string :image
      t.string :stash

      t.timestamps
    end
  end
end
