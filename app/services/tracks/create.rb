module Tracks
    class Create

        def initialize(results_api:, album_id:)

            @results = results_api
            @album_id = album_id
        end

        def execute

            @results['track'].each do |key, value|
                
                api_id = key['idTrack']
                name = key['strTrack']
                genre = key['strGenre']
                duration = key['intDuration']


                @track = Track.new(api_id: api_id, album_id: @album_id, name: name, genre: genre, duration: duration)

                @track.save
                # byebug
                
            end


            true

        end

        

    end
end