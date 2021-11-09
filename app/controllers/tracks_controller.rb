class TracksController < ApplicationController

   def index

      @artist = Artist.find(params[:artist_id])
      @album = Album.find(params[:album_id])

      @searched_tracks = ::Tracks::SearchUseCase.new(album: @album).execute

   end

end