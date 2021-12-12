module Tracks
    class SearchUseCase

        # constructor
        def initialize(album:)

            @api_id = album.api_id
            @album_id = album.id
        end

        def execute

            # buscamos los artist que tenemos guardados
            @searched_track_bd = ::Tracks::Search.new(album_id: @album_id).execute

            unless @searched_track_bd.any?   
                #si no algo, si nada           
                
                # llamamos al servicio
                results_api = ::Tracks::SearchApi.new(api_id: @api_id).execute

                unless results_api['track'] == nil 
                    # si no es = nulo, si es != nulo

                    # llamamos al servicio
                    if ::Tracks::Create.new(results_api: results_api, album_id: @album_id).execute
                    
                # realizo de nuevo la búsqueda para devolver, aunque sea 1, una LISTA y poder iterar el bucle del search
                        @searched_track_bd = ::Tracks::Search.new(album_id: @album_id).execute
                    end

                end
                    
            end

            @searched_track_bd

        end

    end
end