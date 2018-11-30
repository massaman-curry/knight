class RemoveImageIdToUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :image_id, :string
  end
end
