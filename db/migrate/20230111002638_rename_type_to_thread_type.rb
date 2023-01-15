class RenameTypeToThreadType < ActiveRecord::Migration[7.0]
  def change
    rename_column :silks, :type, :thread_type
    rename_column :metallics, :type, :thread_type
  end
end
