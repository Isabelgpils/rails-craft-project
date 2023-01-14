class ChangeStashColumn < ActiveRecord::Migration[7.0]
  def change
    change_column :patterns, :stash, :boolean
  end
end
