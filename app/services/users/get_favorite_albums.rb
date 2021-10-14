module Users
    class GetFavoriteAlbums

        def initialize(user:)
                # el @user de aqui es el que vamos a usar dentro del servicio
            @user = user
        end

        # es lo que se va a ejecutar
        def execute

            favorites = @user.favorites.where(user_id: @user)

            favorites_album_ids = favorites.where(favoritable_type: 'Album').map(&:favoritable_id)
            albums = Album.where(id: favorites_album_ids)

            albums
            
        end
        
    end
end
