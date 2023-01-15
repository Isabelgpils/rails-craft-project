class CreatePatterns < ActiveRecord::Migration[7.0]
  def change
    create_table :patterns do |t|
      t.text :brand
      t.text :pattern_name
      t.text :number
      t.text :size

      t.timestamps
    end
  end
end
