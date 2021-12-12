require 'json'

module Albums
    class SearchApi

        # constructor
        def initialize(api_id: nil)

            @api_id = api_id
        end

        def execute

            # llamamos a la API, parseamos el resultado y lo devolvemos
            response = RestClient.get('theaudiodb.com/api/v1/json/1/album.php?i=' + @api_id.to_s)
     
            results = JSON.parse(response.to_str)

            results

        end

    end
end     