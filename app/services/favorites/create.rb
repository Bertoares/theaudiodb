module Favorites
    class Create

        def initialize(object:, current_user:)

            @object = object
            @current_user = current_user
        end

        def execute
            new_favorite = Favorite.new(favoritable_type: @object.class, favoritable_id: @object.id, user_id: @current_user.id)
            new_favorite.save!
        end

    end
end