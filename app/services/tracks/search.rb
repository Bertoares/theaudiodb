module Tracks
    class Search 

        def initialize(album_id: nil)

            @album_id = album_id
        end

        def execute

            tracks = Track.all

                # solo hace esto si @name no es nil
            tracks = tracks.where('album_id like ?', "%#{@album_id}%") if @album_id

            tracks
            
        end
    end
end