class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      
      t.integer :api_id

      t.string :name
      t.integer :year
      t.string :genre
      t.string :website
      t.string :facebook
      t.string :twitter
      t.string :country
      t.string :bio_en
      t.string :bio_esp
      t.string :thumb

      t.timestamps
    end
  end
end
