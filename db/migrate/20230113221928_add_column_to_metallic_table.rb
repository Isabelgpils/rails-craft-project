class AddColumnToMetallicTable < ActiveRecord::Migration[7.0]
  def change
    def change
      add_column :metallics, :patterns, :text, array: true, default: []
    end
  end
end
