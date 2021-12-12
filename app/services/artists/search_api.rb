require 'json'

module Artists
    class SearchApi

        # constructor
        def initialize(name: nil)

            @name = name
        end

        def execute

            # llamamos a la API, parseamos el resultado y lo devolvemos
            response = RestClient.get('theaudiodb.com/api/v1/json/1/search.php?s=' + @name)
     
            results = JSON.parse(response.to_str)

            results

        end

    end
end     