class CreateAlbumImages < ActiveRecord::Migration
  def change
    create_table :album_images do |t|
      t.string :file
      t.references :album, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
