module Albums
    class Search 

        def initialize(artist_id: nil)

            @artist_id = artist_id
        end

        def execute

            albums = Album.all

                # solo hace esto si @name no es nil
            albums = albums.where('artist_id like ?', "%#{@artist_id}%") if @artist_id

            albums
            
        end
    end
end