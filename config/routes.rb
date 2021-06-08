Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :pets do
    collection do
      get :my_pets
    end
    member do
      get :pet_owner
    end
    resources :adoptions, only: [:new, :create]
  end

  resources :adoptions, only: [:index, :show, :destroy] do
    member do
      get :adoption_user
    end
  end

  resources :chatrooms, only: :show do
    resources :messages, only: :create
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
