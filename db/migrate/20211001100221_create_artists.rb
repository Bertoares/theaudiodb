class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      
      t.string :api_id

      t.string :name
      t.integer :year
      t.string :style
      t.string :website
      t.string :facebook
      t.string :twitter
      t.string :country
      t.text :bio_en
      t.text :bio_esp
      t.string :thumb

      t.timestamps
    end
  end
end
