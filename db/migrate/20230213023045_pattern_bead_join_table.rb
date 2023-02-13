class PatternBeadJoinTable < ActiveRecord::Migration[7.0]
  create_join_table :patterns, :beads do |t|
    t.index :pattern_id
    t.index :bead_id
  end
end