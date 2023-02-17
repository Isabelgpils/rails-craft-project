class AddAssociationsToPatternsMetallics < ActiveRecord::Migration[7.0]
  def change
    create_table :metallics_patterns, id: false do |t|
      t.belongs_to :pattern
      t.belongs_to :metallic
    end
  end
end
