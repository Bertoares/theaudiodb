module Artists
    class Create

        def initialize(results_api)

            @results = results_api
        end

        def execute

            @results.each do |key, value|
                
                api_id = value['artists'][0]['idArtist']
                name = value['artists'][0]['strArtist']
                year = value['artists'][0]['intFormedYear']
                genre = value['artists'][0]['strGenre']
                website = value['artists'][0]['strWebsite']
                facebook = value['artists'][0]['strFacebook']
                twitter = value['artists'][0]['strTwitter']
                country = value['artists'][0]['strCountry']
                bio_en = value['artists'][0]['strBiographyEN']
                bio_esp = value['artists'][0]['strBiographyES']
                thumb = value['artists'][0]['strArtistThumb']


                @artist = Artist.new(api_id: api_id, name: name, year: year, genre: genre, website: website, 
                    facebook: facebook, twitter: twitter, country: country, bio_en: bio_en, bio_esp: bio_esp, thumb: thumb)

            end

            # @artist = Artist.new(api_id: api_id, name: name, year: year, genre: genre, website: website, 
            #     facebook: facebook, twitter: twitter, country: country, bio_en: bio_en, bio_esp: bio_esp, thumb: thumb)

            @artist.save

            @artist

        end

        

    end
end