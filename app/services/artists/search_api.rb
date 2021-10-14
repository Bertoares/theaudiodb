require 'json'

module Artists
    class SearchApi

        def initialize(name: nil)

            @name = name
        end

        def execute

            response = RestClient.get('theaudiodb.com/api/v1/json/1/search.php?s=' + @name)

            results = JSON.parse(response.to_str)

            name = results['artists'][0]['strArtist']
        end

    end
end