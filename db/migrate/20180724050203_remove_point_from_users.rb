class RemovePointFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :point, :integer
  end
end
