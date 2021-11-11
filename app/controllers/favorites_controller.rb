class FavoritesController < ApplicationController

    # Controla los datos del modelo

    # Esto sirve para guardar un nuevo favorito
    def create

        @object_id = params[:object_id]
        @object_class = params[:object_class]
        @current_user = params[:user_id]

        ::Favorites::CreateUseCase.new(object_id: @object_id, object_class: @object_class, current_user: @current_user).execute

    end

    def destroy

        @object_id = params[:object_id]
        @object_class = params[:object_class]
        @current_user = params[:user_id]

        ::Favorites::DestroyUseCase.new(object_id: @object_id, object_class: @object_class, current_user: @current_user).execute

    end




    private

    # def favorite_params            
    #     # Requiere un favorito, que permite estos datos, SOLO funciona si vienen estos 3
    #         # param "es el objeto donde te vienen todos los parametros de la vista"
    #     params.require(:favorite).permit(   :user, 
    #                                         :favoritable_id, 
    #                                         :favoritable_type)
    # end
end