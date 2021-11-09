class ArtistsController < ApplicationController

    # MÉTODOS CRUD ENTERO    index, show
    def index
        # @user_id = params[:user][:id]
                    # params: hash que siempre llega al controlador
        name_artist = params[:search]

       # @searched_artist_bd = ::Artists::Search.new(name: name_artist).execute
       # results_api = ::Artists::SearchApi.new(name: name_artist).execute

        @searched_artists = ::Artists::SearchUseCase.new(name: name_artist).execute
  

        # hacer servicio de busqueda de artist a la api
        #coger el resultado
        #nostrarlo en la vista de search_Artist
    end
    
    # muestra el detalle del objeto, en este caso artista
    def show
        @artist = Artist.find(params[:id])
    end

    

end
