class ChangeMetallicColumnDefault < ActiveRecord::Migration[7.0]
  def change
    add_column :metallics, :metallic_type, :string
  end

  def up
    change_table :metallics do |t|
      t.change :patterns, :string, array: true
    end
  end

  def down
    change_table :metallics do |t|
      t.change :patterns, :text, array: true, default: []
    end
  end
end
