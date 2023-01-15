class AddImageToPatterns < ActiveRecord::Migration[7.0]
  def change
    add_column :patterns, :image, :text
  end
end
