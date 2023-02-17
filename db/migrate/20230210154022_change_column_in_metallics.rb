class ChangeColumnInMetallics < ActiveRecord::Migration[7.0]
  def down

    change_column :metallics, :pattern, :string, array: true, default: []
  end
  def up
    change_column :metallics, :pattern, :string, array: true
  end
end