class DropMetallicsPatterns < ActiveRecord::Migration[7.0]
  def change
    drop_table :metallics_patterns
  end
end
