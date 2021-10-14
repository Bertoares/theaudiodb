class ArtistsController < ApplicationController

    # MÉTODOS CRUD ENTERO    index, show

    # muestra la lista
    def index
        @artists = Artist.all 
    end

    # muestra el detalle del objeto, en este caso artista
    def show
        p '**************************'
        p params
        @artist = Artist.find(params[:id])
    end

    def search
        # byebug
 
                    # params: hash que siempre llega al controlador
        name_artist = params[:search]

       # @searched_artist_bd = ::Artists::Search.new(name: name_artist).execute
        @searched_artist_bd = ::Artists::SearchApi.new(name: name_artist).execute
  

        # hacer servicio de busqueda de artist a la api
        #coger el resultado
        #nostrarlo en la vista de search_Artist
    end

end
