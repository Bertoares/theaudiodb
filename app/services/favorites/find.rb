module Favorites
    class Find 

        def initialize(object:, current_user:)

            @object = object
            @current_user = current_user
        end

        def execute
                # solo hace esto si @artist_id no es nil
            favorite = Favorite.find_by(favoritable_type: @object.class, favoritable_id: @object.id, user_id: @current_user.id)
            
            favorite
            
        end
    end
end