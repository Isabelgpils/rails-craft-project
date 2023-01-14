class RenameNameToPatternName < ActiveRecord::Migration[7.0]
  def change
    rename_column :patterns, :name, :pattern_name
  end
end
