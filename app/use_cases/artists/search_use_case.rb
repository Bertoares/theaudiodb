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
                
                results_api = ::Artists::SearchApi.new(name: @name).execute

                if results_api

                    @searched_artist_bd = ::Artists::Create.new(results_api: results_api).execute

                end
                    
            end

            @searched_artist_bd 
        end

    end
end