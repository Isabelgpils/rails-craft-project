class CreatePatterns < ActiveRecord::Migration[7.0]
  def change
    create_table :patterns do |t|
      t.string :brand
      t.string :pattern_name
      t.string :number
      t.string :size

      t.timestamps
    end
  end
end
