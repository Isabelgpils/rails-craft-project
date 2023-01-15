class CreateAllPatterns < ActiveRecord::Migration[7.0]
  def change
    create_table :all_patterns do |t|
      t.text :brand
      t.text :number
      t.text :pattern_name
      t.text :size

      t.timestamps
    end
  end
end
