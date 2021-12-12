class ArtistsController < ApplicationController

    # lista de objetos
    # recoge el texto del input, si es vacio lo devuelve así, y si no llama al caso de uso
    def index
        
        name_artist = params[:search]

        if name_artist == ""
            @searched_artists = ""
        else
            @searched_artists = ::Artists::SearchUseCase.new(name: name_artist).execute
        end
  

    end
    
    # muestra el detalle del objeto
    # busca el artista y llama al caso de uso
    def show
        @artist = Artist.find(params[:id])
        
        @searched_albums = ::Albums::SearchUseCase.new(artist: @artist).execute
    end

    

end
