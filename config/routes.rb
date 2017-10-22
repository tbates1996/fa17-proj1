Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch 'capture', to: "pokemon#capture", as: 'capture'
  patch 'damage', to: 'pokemon#damage', as: 'damage'
  get 'pokemon/new', to: 'pokemon#new', as: 'new_pokemon'
  post 'pokemons', to: 'pokemon#create'
end
