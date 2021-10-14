class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|

      t.string :favoritable_type # nombre de lo que guardo
      t.integer :favoritable_id # id artista, album, cancion...

        # le metemos la clave (id) de users
      t.references :user, foreign_key: true, index: true, null: false

      t.timestamps
    end
  end
end
