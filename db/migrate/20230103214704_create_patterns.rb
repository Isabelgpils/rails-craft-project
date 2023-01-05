class CreatePatterns < ActiveRecord::Migration[7.0]
  def change
    create_table :patterns do |t|
      t.string :brand
      t.string :number
      t.string :size
      t.string :image
      t.string :thumbnail
      t.string :name
      t.boolean :stash
      t.boolean :finished

      t.timestamps
    end
  end
end
