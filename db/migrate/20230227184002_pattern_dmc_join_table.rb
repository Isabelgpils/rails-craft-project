class PatternDmcJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :patterns, :dmcs do |t|
      t.index :pattern_id
      t.index :dmc_id
    end
  end
end
