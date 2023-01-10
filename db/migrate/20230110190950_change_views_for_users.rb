class ChangeViewsForUsers < ActiveRecord::Migration[7.0]
  def change
    def change
      add_column :users, :views, integer: 0
    end
  end
end
