module Artists
    class Search 

        def initialize(name: nil)

            @name = name
        end

        def execute

            artists = Artist.all

                # solo hace esto si @name no es nil
        # muestra todos los resultados de:  Bon -> Bon Jobi
            artists = artists.where('name like ?', "%#{@name}%") if @name

            artists
            
        end
    end
end