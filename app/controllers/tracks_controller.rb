class TracksController < ApplicationController

   def index
   
   @album = Album.find(params[:id])

   @searched_tracks = ::Tracks::SearchUseCase.new(album: @album).execute

   end

end