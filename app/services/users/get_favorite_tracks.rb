module Users 
    class GetFavoriteTracks
         
         # es el constructor
        def initialize(user:)
                # el @user de aqui es el que vamos a usar dentro del servicio
            @user = user
        end

         # es lo que se va a ejecutar
        def execute

            favorites = @user.favorites.where(user_id: @user)
        
            favorites_track_ids = favorites.where(favoritable_type: 'Track').map(&:favoritable_id)
            tracks = Track.where(id: favorites_track_ids) 
            
            # aquí hace el return, pero Rails devuelve la última linea
            tracks
        
        end
    
    end
end