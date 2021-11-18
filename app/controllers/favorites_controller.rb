class FavoritesController < ApplicationController

    # Controla los datos del modelop

    # Esto sirve para guardar un nuevo favorito
    def create

        @object_id = params[:object_id]
        @object_class = params[:object_class]
        @current_user = params[:user_id]

        ::Favorites::CreateUseCase.new(object_id: @object_id, object_class: @object_class, current_user: @current_user).execute

        @object_found = get_object(object_class: @object_class, object_id: @object_id)
        
        respond_to do |format|
            format.js { render template: 'favorites/change_favorite' }
        end

    end



    def destroy

        @object_id = params[:object_id]
        @object_class = params[:object_class]
        @current_user = params[:user_id]

        ::Favorites::DestroyUseCase.new(object_id: @object_id, object_class: @object_class, current_user: @current_user).execute

        @object_found = get_object(object_class: @object_class, object_id: @object_id)
        
        respond_to do |format|
            format.js { render template: 'favorites/change_favorite' }
        end

    end



    

    private

    def get_object(object_class:, object_id:)
        object = object_class.constantize
        object.find(object_id.to_i)

    end

end