class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.references :profile, index: true, foreign_key: true
      t.string :title
      t.string :city
      t.string :country
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
