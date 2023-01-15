class CreateAllPatterns < ActiveRecord::Migration[7.0]
  def change
    create_table :all_patterns do |t|
      t.string :brand
      t.string :number
      t.string :pattern_name
      t.string :size

      t.timestamps
    end
  end
end
