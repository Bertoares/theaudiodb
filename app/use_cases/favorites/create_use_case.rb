module Favorites
    class CreateUseCase

        def initialize(object_id:, object_class:, current_user:)

            @object_id = object_id
            @object_class = object_class
            @current_user = current_user
        end

        def execute

            favorite = ::Favorites::Find.new(object_id: @object_id, object_class: @object_class, current_user: @current_user).execute
            
            if favorite.blank?
            
                ::Favorites::Create.new(object_id: @object_id, object_class: @object_class, current_user: @current_user).execute

            end


        end

    end
end