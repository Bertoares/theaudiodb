class UsersController < ApplicationController

    def index
        
    end

    def show

        begin 
            @user = User.find(params[:id])
        rescue => exception
            @user = current_user
        end

    # llamamos al servicio que estar en la carpeta User, y le pasamos una variable con el valor de @user
        @favorite_artists = ::Users::GetFavoriteArtists.new(user: @user).execute
        @favorite_albums = ::Users::GetFavoriteAlbums.new(user: @user).execute
        @favorite_tracks = ::Users::GetFavoriteTracks.new(user: @user).execute


    end
    
    
end