module Users 
    class GetFavoriteArtists
         
         # es el constructor
        def initialize(user:)
                # el @user de aqui es el que vamos a usar dentro del servicio
            @user = user
        end

         # es lo que se va a ejecutar
        def execute

            favorites = @user.favorites.where(user_id: @user)
        
            favorites_artist_ids = favorites.where(favoritable_type: 'Artist').map(&:favoritable_id)
            artists = Artist.where(id: favorites_artist_ids) 
            
            # aquí hace el return, pero Rails devuelve la última linea
            artists
        
        end
    
    end
end