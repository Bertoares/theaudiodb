class FavoritesController < ApplicationController

    # Controla los datos del modelo

    # Esto sirve para guardar un nuevo favorito
    def create
                            #    llamamos al método params
        @favorite = ::Favorites::Create.new(favorite_params: @favorite_params).execute

        # if @favorite.save
        #     redirect_to [@favorite.favoritable], notice: 'Favorite created'
        # else
        #     render :new
        # end

    end

    private

    def favorite_params            
        # Requiere un favorito, que permite estos datos, SOLO funciona si vienen estos 3
            # param "es el objeto donde te vienen todos los parametros de la vista"
        params.require(:favorite).permit(   :user, 
                                            :favoritable_id, 
                                            :favoritable_type)
    end
end