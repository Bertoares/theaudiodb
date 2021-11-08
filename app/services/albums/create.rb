module Albums
    class Create

        def initialize(results_api:, artist_id:)

            @results = results_api
            @artist_id = artist_id
        end

        def execute

            @results['album'].each do |key, value|
                
                api_id = key['idAlbum']
                name = key['strAlbum']
                year = key['intYearReleased']
                genre = key['strGenre']
                des_en = key['strDescriptionEN']
                des_esp = key['strDescriptionES']
                thumb = key['strAlbumThumb']


                @album = Album.new(api_id: api_id, artist_id: @artist_id, name: name, year: year,
                            genre: genre, des_en: des_en, des_esp: des_esp, thumb: thumb)

                @album.save
                # byebug
                
            end


            true

        end

        

    end
end