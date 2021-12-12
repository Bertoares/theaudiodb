module Albums
    class Search 

        # constructor
        def initialize(artist_id: nil)

            @artist_id = artist_id
        end

        def execute

            # busca en todos los registros de Album, uno que tenga el @artist_id
            albums = Album.all

            albums = albums.where('artist_id like ?', "%#{@artist_id}%") if @artist_id

            albums
            
        end
    end
end