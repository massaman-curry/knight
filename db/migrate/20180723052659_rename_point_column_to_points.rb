class RenamePointColumnToPoints < ActiveRecord::Migration[5.1]
  def change
  	rename_column :points, :point, :token
  end
end
