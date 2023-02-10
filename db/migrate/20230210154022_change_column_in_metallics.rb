class ChangeColumnInMetallics < ActiveRecord::Migration[7.0]
  def change
    change_column :metallics, :pattern, array: true, default: []
  end
end