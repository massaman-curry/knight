class RenameImageIdColumnToAlbums < ActiveRecord::Migration[5.1]
  def change
  	rename_column :albums, :image_id, :images_id
  end
end
