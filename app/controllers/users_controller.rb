class UsersController < ApplicationController

    def index
        
            # recogemos todos los artistas, y buscamos el que se llame Bon Jobi
        @artists = Artist.where(name: 'Bon Jobi')
    end

    def show
        
        @user = User.find(params[:id])

    # llamamos al servicio que estar en la carpeta User, y le pasamos una variable con el valor de @user
        @favorite_artists = ::Users::GetFavoriteArtists.new(user: @user).execute
        @favorite_albums = ::Users::GetFavoriteAlbums.new(user: @user).execute
        @favorite_tracks = ::Users::GetFavoriteTracks.new(user: @user).execute


    end
    
    
end