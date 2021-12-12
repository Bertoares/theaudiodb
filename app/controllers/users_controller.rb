class UsersController < ApplicationController

    # muestra el detalle del objeto
    # si no encuentra un id de usuario, mantiene el ultimo que tenía
    def show

        begin 
            @user = User.find(params[:id])
        rescue => exception
            @user = current_user
        end

        # servicios para recoger y mostrar los favoritos del usuario
        @favorite_artists = ::Users::GetFavoriteArtists.new(user: @user).execute
        @favorite_albums = ::Users::GetFavoriteAlbums.new(user: @user).execute
        @favorite_tracks = ::Users::GetFavoriteTracks.new(user: @user).execute


    end
    
    
end