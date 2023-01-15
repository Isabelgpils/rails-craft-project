class RemoveImagesFromPatterns < ActiveRecord::Migration[7.0]
  def change
    remove_column :patterns, :image, :text
  end
end
