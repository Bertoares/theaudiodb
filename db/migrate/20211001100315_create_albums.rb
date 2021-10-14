class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      
      t.integer :api_id
      t.references :artist, foreign_key: true, index: true, null: false

      t.string :name
      t.integer :year
      t.string :genre
      t.string :des_en
      t.string :des_esp 

      t.timestamps
    end
  end
end
