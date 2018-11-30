class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|

    	t.integer :post_id
    	t.string :image_id

      t.timestamps
    end
  end
end
