Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :pets do
    collection do
      get :my_pets
    end
    resources :adoptions

  end
end

#resources :offers do
#    resources :bookings, only: [ :new, :create ]
#    collection do
#      get :my_offers
#    end
#  end
#  resources :bookings, only: [:index] do
#    collection do
#      get :my_bookings
#    end
#  end
