class AddUserToPatterns < ActiveRecord::Migration[7.0]
  def change
    add_reference :patterns, :user, null: false, foreign_key: true
  end
end
