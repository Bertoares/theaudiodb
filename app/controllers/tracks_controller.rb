class TracksController < ApplicationController

   # lista de objetos
   # busca ael album, el artista y llama al caso de uso
   def index

      @artist = Artist.find(params[:artist_id])
      @album = Album.find(params[:album_id])

      @searched_tracks = ::Tracks::SearchUseCase.new(album: @album).execute

   end

end