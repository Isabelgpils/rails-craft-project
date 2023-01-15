class RemoveImagesFromPatterns < ActiveRecord::Migration[7.0]
  def change
    remove_column :patterns, :image, :string
  end
end
