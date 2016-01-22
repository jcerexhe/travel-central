class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :favourite_places
      t.string :occupation
      t.text :bio
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
