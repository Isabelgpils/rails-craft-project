class AddNameToPatterns < ActiveRecord::Migration[7.0]
  def change
    add_column :patterns, :name, :string
  end
end
