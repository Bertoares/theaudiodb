module Favorites
    class Destroy

        def initialize(object:, current_user:)

            @object = object
            @current_user = current_user
        end

        def execute
            destroy_favorite = Favorite.find_by(favoritable_type: @object.class, favoritable_id: @object.id, user_id: @current_user.id)
            destroy_favorite.destroy
        end

    end
end