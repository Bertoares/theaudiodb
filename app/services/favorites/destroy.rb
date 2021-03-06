module Favorites
    class Destroy

        # constructor
        def initialize(object_id:, object_class:, current_user:)

            @object_id = object_id
            @object_class = object_class
            @current_user = current_user
        end

        def execute
            # buscamos el favorito por el id y lo destruimos
            destroy_favorite = Favorite.find_by(favoritable_id: @object_id, favoritable_type: @object_class,user_id: @current_user)
            destroy_favorite.destroy
        end

    end
end