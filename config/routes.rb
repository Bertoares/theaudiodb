Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # esto es lo que se abre cuando ingresamos en localhost
  root to: 'users#show' # usa el controlador login, con el método index

  
  resources :artists, only: [:index, :show] do
      resources :albums, only: [:index, :show] do
        resources :tracks, only: [:index, :show]
      end
  end

  
  devise_for :users
  
  resources :users do
                        # crea unicamente las url que nos interesan del CRUD
    resources :favorites, only: [:create, :destroy]

  end


end
