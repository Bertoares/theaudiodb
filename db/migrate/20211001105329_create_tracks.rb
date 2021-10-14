class CreateTracks < ActiveRecord::Migration[6.1]
  def change
    create_table :tracks do |t|

      t.integer :api_id
      t.references :album, foreign_key: true, index: true, null: false
      
      t.string :name
      t.string :genre
      t.integer :duration

      t.timestamps
    end
  end
end
