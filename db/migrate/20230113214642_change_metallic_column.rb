class ChangeMetallicColumn < ActiveRecord::Migration[7.0]
  change_table :metallics do |t|
    t.remove :pattern, :text
  end
end