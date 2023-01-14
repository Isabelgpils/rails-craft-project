class AddImageToPatterns < ActiveRecord::Migration[7.0]
  def change
    add_column :patterns, :image, :string
  end
end
