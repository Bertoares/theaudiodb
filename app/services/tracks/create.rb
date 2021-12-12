module Tracks
    class Create

        # constructor
        def initialize(results_api:, album_id:)

            @results = results_api
            @album_id = album_id
        end

        def execute

            # bucle para recoger el valor segun la clave
            @results['track'].each do |key, value|
                
                api_id = key['idTrack']
                name = key['strTrack']
                genre = key['strGenre']
                duration = key['intDuration']


                # creamos el objeto Track y lo guardamos
                @track = Track.new(api_id: api_id, album_id: @album_id, name: name, genre: genre, duration: duration)

                @track.save
                
            end


            true

        end

        

    end
end