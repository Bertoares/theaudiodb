module Albums
    class SearchUseCase

        # constructor
        def initialize(artist:)

            @api_id = artist.api_id
            @artist_id = artist.id
        end

        def execute

            # buscamos los albumes que tenemos guardados
            @searched_album_bd = ::Albums::Search.new(artist_id: @artist_id).execute

            unless @searched_album_bd.any?   
                #si no algo, si nada           
                
                # llamamos al servicio
                results_api = ::Albums::SearchApi.new(api_id: @api_id).execute

                unless results_api['album'] == nil 
                    # si no es = nulo, si es != nulo

                    # llamamos al servicio
                    if ::Albums::Create.new(results_api: results_api, artist_id: @artist_id).execute
                    
                # realizo de nuevo la búsqueda para devolver, aunque sea 1, una LISTA y poder iterar el bucle del search
                        @searched_album_bd = ::Albums::Search.new(artist_id: @artist_id).execute
                    end

                end
                    
            end

            @searched_album_bd

        end

    end
end