class MetallicPatternJoinTable < ActiveRecord::Migration[7.0]
  create_join_table :metallics, :patterns do |t|
    t.index :metallic_id
    t.index :pattern_id
  end
end
