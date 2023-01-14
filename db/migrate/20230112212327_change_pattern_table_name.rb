class ChangePatternTableName < ActiveRecord::Migration[7.0]
  def change
    rename_table :patterns, :user_patterns
  end
end
