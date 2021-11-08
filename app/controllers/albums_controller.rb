class AlbumsController < ApplicationController

    def index

        artist = Artist.find(params[:id])
        
        @searched_albums = ::Albums::SearchUseCase.new(artist: artist).execute

    end

    # muestra el detalle del objeto, en este caso album
    def show
        @album = Album.find(params[:id])
    end

end
