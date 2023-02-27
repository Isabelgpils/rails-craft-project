class AddColumnToDmc < ActiveRecord::Migration[7.0]
  def change
    add_column :dmcs, :pattern, :string
  end
end
