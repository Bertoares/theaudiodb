module Favorites
    class Find 

        # constructor
        def initialize(object_id:, object_class:, current_user:)

            @object_id = object_id
            @object_class = object_class
            @current_user = current_user
        end

        def execute
            # busca el favorito y lo devuelve
            favorite = Favorite.find_by(favoritable_id: @object_id, favoritable_type: @object_class, user_id: @current_user)
            
            favorite
            
        end
    end
end