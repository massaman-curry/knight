class RemoveUserIdToUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :user_id, :string
  end
end
