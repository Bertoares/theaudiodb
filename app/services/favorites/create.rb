module Favorites
    class Create

        # constructor
        def initialize(object_id:, object_class:, current_user:)

            @object_id = object_id
            @object_class = object_class
            @current_user = current_user
        end

        def execute
            # guardamos el favorito en la bd
            new_favorite = Favorite.new(favoritable_id: @object_id, favoritable_type: @object_class, user_id: @current_user)
            new_favorite.save!
        end

    end
end