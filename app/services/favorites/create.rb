module Favorites
    class Create

        def initialize(favorite_params:)

            @favorite_params = favorite_params
        end

        def execute
            Favorite.create!(@favorite_params)
        end

    end
end