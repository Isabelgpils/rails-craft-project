class PatternSilkJoinTable < ActiveRecord::Migration[7.0]
  create_join_table :patterns, :silks do |t|
    t.index :pattern_id
    t.index :silk_id
  end
end
