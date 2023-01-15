class AddSizeToPatterns < ActiveRecord::Migration[7.0]
  def change
    add_column :patterns, :size, :text
    add_column :patterns, :finished, :boolean
  end
end
