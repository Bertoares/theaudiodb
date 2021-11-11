module Favorites
    class Find 

        def initialize(object_id:, object_class:, current_user:)

            @object_id = object_id
            @object_class = object_class
            @current_user = current_user
        end

        def execute
                # solo hace esto si @artist_id no es nil
            favorite = Favorite.find_by(favoritable_id: @object_id, favoritable_type: @object_class, user_id: @current_user)
            
            favorite
            
        end
    end
end