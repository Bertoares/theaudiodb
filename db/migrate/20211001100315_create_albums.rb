class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      
      t.string :api_id
      t.references :artist, foreign_key: true, index: true, null: false

      t.string :name
      t.integer :year
      t.string :genre
      t.text :des_en
      t.text :des_esp 
      t.string :thumb

      t.timestamps
    end
  end
end
