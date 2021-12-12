module Tracks
    class Search 

        # constructor
        def initialize(album_id: nil)

            @album_id = album_id
        end

        def execute

            # busca en todos los registros de Track, uno que tenga el @album_id
            tracks = Track.all

            tracks = tracks.where('album_id like ?', "%#{@album_id}%") if @album_id

            tracks
            
        end
    end
end