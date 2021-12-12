module Artists
    class Search 

        # constructor
        def initialize(name: nil)

            @name = name
        end

        def execute

            # busca en todos los registros de Artist, uno que tenga el @name
            artists = Artist.all

            artists = artists.where('name like ?', "%#{@name}%") if @name

            artists
            
        end
    end
end