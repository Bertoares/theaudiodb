class AlbumsController < ApplicationController

    # lista de objetos
    # busca el artista y llama al caso de uso
    def index

        @artist = Artist.find(params[:artist_id])
        
        @searched_albums = ::Albums::SearchUseCase.new(artist: @artist).execute

    end

    # muestra el detalle del objeto
    # busca ael album, el artista y llama al caso de uso
    def show
        @album = Album.find(params[:id])
        @artist = Artist.find(params[:artist_id])

        @searched_tracks = ::Tracks::SearchUseCase.new(album: @album).execute
    end

end
