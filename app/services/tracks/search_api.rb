require 'json'

module Tracks
    class SearchApi

        def initialize(api_id: nil)

            @api_id = api_id
        end

        def execute

            response = RestClient.get('theaudiodb.com/api/v1/json/1/track.php?m=' + @api_id.to_s)
     
            results = JSON.parse(response.to_str)

            results

        end

    end
end     