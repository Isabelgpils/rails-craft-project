class ChangeMetallicColumnDefault < ActiveRecord::Migration[7.0]
  def change
    add_column :metallics, :metallic_type, :string
  end
end
