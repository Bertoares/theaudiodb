module Favorites
    class CreateUseCase

        # constructor
        def initialize(object_id:, object_class:, current_user:)

            @object_id = object_id
            @object_class = object_class
            @current_user = current_user
        end

        def execute

            # buscamos el favorito, si no hay ninguno, lo crea
            favorite = ::Favorites::Find.new(object_id: @object_id, object_class: @object_class, current_user: @current_user).execute
            
            if favorite.blank?
            
                ::Favorites::Create.new(object_id: @object_id, object_class: @object_class, current_user: @current_user).execute

            end


        end

    end
end