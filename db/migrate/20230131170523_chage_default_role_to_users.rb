class ChageDefaultRoleToUsers < ActiveRecord::Migration[7.0]
  def up
    change_table :users do |t|
      t.change :role, :integer, :default => 0
    end
  end

  def down
    change_table :users do |t|
      t.change :role, :integer, :default => 0
    end
  end
end