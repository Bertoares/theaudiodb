module Artists
    class SearchUseCase

        def initialize(name:)

            @name = name
        end

        def execute

            # metemos los servicios aquí
            # busqueda en Api, guardar en bd, busqueda en bd

            @searched_artist_bd = ::Artists::Search.new(name: @name).execute

            unless @searched_artist_bd.any?   
                #si no algo, si nada           
                
                results_api = ::Artists::SearchApi.new(name: @name).execute

                unless results_api['artists'] == nil 
                    # si no es = nulo, si es != nulo

                    ::Artists::Create.new(results_api: results_api).execute

    # realizo de nuevo la búsqueda para devolver, aunque sea 1, una LISTA y poder iterar el bucle del search
                    @searched_artist_bd = ::Artists::Search.new(name: @name).execute

                end
                    
            end

            @searched_artist_bd

        end

    end
end